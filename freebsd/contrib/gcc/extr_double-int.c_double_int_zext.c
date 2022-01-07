
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int low; int high; } ;
typedef TYPE_1__ double_int ;


 TYPE_1__ double_int_mask (unsigned int) ;

double_int
double_int_zext (double_int cst, unsigned prec)
{
  double_int mask = double_int_mask (prec);
  double_int r;

  r.low = cst.low & mask.low;
  r.high = cst.high & mask.high;

  return r;
}
