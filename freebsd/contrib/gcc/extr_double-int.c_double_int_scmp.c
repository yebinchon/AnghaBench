
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ high; scalar_t__ low; } ;
typedef TYPE_1__ double_int ;
typedef scalar_t__ HOST_WIDE_INT ;



int
double_int_scmp (double_int a, double_int b)
{
  if (a.high < b.high)
    return -1;
  if (a.high > b.high)
    return 1;
  if ((HOST_WIDE_INT) a.low < (HOST_WIDE_INT) b.low)
    return -1;
  if ((HOST_WIDE_INT) a.low > (HOST_WIDE_INT) b.low)
    return 1;

  return 0;
}
