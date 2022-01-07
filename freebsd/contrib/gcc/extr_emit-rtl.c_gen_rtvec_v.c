
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int rtx ;
typedef TYPE_1__* rtvec ;
struct TYPE_5__ {int * elem; } ;


 TYPE_1__* NULL_RTVEC ;
 TYPE_1__* rtvec_alloc (int) ;

rtvec
gen_rtvec_v (int n, rtx *argp)
{
  int i;
  rtvec rt_val;

  if (n == 0)
    return NULL_RTVEC;

  rt_val = rtvec_alloc (n);

  for (i = 0; i < n; i++)
    rt_val->elem[i] = *argp++;

  return rt_val;
}
