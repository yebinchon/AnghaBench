
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mem_cost; int* cost; } ;


 int N_REG_CLASSES ;
 TYPE_1__ init_cost ;
 int no_global_reg_vars ;
 int * reg_pref ;

void
regclass_init (void)
{
  int i;

  init_cost.mem_cost = 10000;
  for (i = 0; i < N_REG_CLASSES; i++)
    init_cost.cost[i] = 10000;



  reg_pref = ((void*)0);


  no_global_reg_vars = 1;
}
