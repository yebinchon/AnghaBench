
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long math_div (long,int) ;

__attribute__((used)) static long leaps_between(long y1, long y2)
{
 long leaps1 = math_div(y1 - 1, 4) - math_div(y1 - 1, 100)
  + math_div(y1 - 1, 400);
 long leaps2 = math_div(y2 - 1, 4) - math_div(y2 - 1, 100)
  + math_div(y2 - 1, 400);
 return leaps2 - leaps1;
}
