
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_DAYS ;
 int day_in_year (int,int,int) ;
 int day_of_week (int,int,int) ;
 int isleap (int) ;

__attribute__((used)) static int
iso_week(int year, int month, int day)
{
    int week = 1;
    int dow;
    int new_year_dow;
    int diy;
    int new_years_eve_dow;
    static const int thursday = 3;


    diy = day_in_year(year, month, day);
    week += (diy - 1) / MAX_DAYS;


    dow = day_of_week(year, month, day);
    new_year_dow = day_of_week(year, 1, 1);





    if (new_year_dow > thursday)
 --week;


    if (dow - new_year_dow < 0)
 ++week;


    if (week < 1) {
 week = iso_week(--year, 12, 31);
    }





    new_years_eve_dow = (new_year_dow + 364 + isleap(year)) % MAX_DAYS;
    if (365 + isleap(year) - diy < MAX_DAYS
 && new_years_eve_dow >= dow
 && new_years_eve_dow < thursday) {
 ++year;
 week = 1;
    }
    return week;
}
