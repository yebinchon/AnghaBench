
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_DAYS ;
 int days_per_month (int,int) ;
 int iso_week (int,int,int) ;

__attribute__((used)) static int *
getisoweeks(int year, int month)
{
    static int result[10];
    int windx = 0;
    int day;
    int dpm = days_per_month(year, month);

    for (day = 1; day <= dpm; day += MAX_DAYS)
 result[windx++] = iso_week(year, month, day);






    result[windx] = iso_week(year, month, dpm);
    return result;
}
