
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int high; int low; } ;
typedef TYPE_1__ double_int ;


 int neg_double (int ,int ,int *,int *) ;

double_int
double_int_neg (double_int a)
{
  double_int ret;
  neg_double (a.low, a.high, &ret.low, &ret.high);
  return ret;
}
