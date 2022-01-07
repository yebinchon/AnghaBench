
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_year; int tm_mon; } ;


 int adjust_year_month (int*,int*) ;
 int days_per_month (int,int) ;

__attribute__((used)) static int
days_in_month(struct tm *current, int offset )
{
    int year = current->tm_year + 1900;
    int month = current->tm_mon + offset;

    adjust_year_month(&year, &month);
    return days_per_month(year, month);
}
