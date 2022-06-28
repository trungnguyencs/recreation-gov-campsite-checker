# Yosemite 232447 232449 232450
# Glacier 251869 232493 232492 258795
# Mt Rainier 232466 232465
# North Cascades 246855 255201
# Tahoe 232769
# Sequoia 232461

$path = 'C:\Users\thanguyen\Documents\recreation-gov-campsite-checker'
Set-Location $path

$date = @("2022-07-13", "2022-07-16")
python camping.py --start-date $date[0] --end-date $date[1] --parks 251869 232493 232492 258795 | python notifier.py "@trungnguyen276"

$dates = @(
    ("2022-07-22", "2022-07-24"),
    ("2022-07-29", "2022-07-31"),
    ("2022-08-05", "2022-08-07")
)
foreach ($date in $dates)
{
    python camping.py --start-date $date[0] --end-date $date[1] --parks 232466 | python notifier.py "@trungnguyen276"
}

$date = @("2022-07-01", "2022-07-04")
python camping.py --start-date $date[0] --end-date $date[1] --parks 232447 232449 232450 232769 232461 | python notifier.py "@trungnguyen276"
