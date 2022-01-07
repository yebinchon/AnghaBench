
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {scalar_t__ tm_year; } ;


 int days_per_year (scalar_t__) ;

__attribute__((used)) static int
days_in_year(struct tm *current, int offset )
{
    return days_per_year(current->tm_year + 1900 + offset);
}
