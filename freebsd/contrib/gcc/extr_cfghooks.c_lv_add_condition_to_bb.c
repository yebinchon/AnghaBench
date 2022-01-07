
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int basic_block ;
struct TYPE_2__ {int (* lv_add_condition_to_bb ) (int ,int ,int ,void*) ;} ;


 TYPE_1__* cfg_hooks ;
 int gcc_assert (int (*) (int ,int ,int ,void*)) ;
 int stub1 (int ,int ,int ,void*) ;

void
lv_add_condition_to_bb (basic_block first, basic_block second,
   basic_block new, void *cond)
{
  gcc_assert (cfg_hooks->lv_add_condition_to_bb);
  cfg_hooks->lv_add_condition_to_bb (first, second, new, cond);
}
