
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int high; int low; } ;
typedef TYPE_1__ double_int ;


 int div_and_round_double (unsigned int,int,int ,int ,int ,int ,int *,int *,int *,int *) ;

double_int
double_int_divmod (double_int a, double_int b, bool uns, unsigned code,
     double_int *mod)
{
  double_int ret;

  div_and_round_double (code, uns, a.low, a.high, b.low, b.high,
   &ret.low, &ret.high, &mod->low, &mod->high);
  return ret;
}
