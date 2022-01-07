
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isleap (int) ;

__attribute__((used)) static int
days_per_year(int year)
{
    return (isleap(year) ? 366 : 365);
}
