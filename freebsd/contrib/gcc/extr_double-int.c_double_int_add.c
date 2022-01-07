
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int high; int low; } ;
typedef TYPE_1__ double_int ;


 int add_double (int ,int ,int ,int ,int *,int *) ;

double_int
double_int_add (double_int a, double_int b)
{
  double_int ret;
  add_double (a.low, a.high, b.low, b.high, &ret.low, &ret.high);
  return ret;
}
