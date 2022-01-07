
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int edge ;
typedef int basic_block ;
struct TYPE_2__ {int (* lv_adjust_loop_header_phi ) (int ,int ,int ,int ) ;} ;


 TYPE_1__* cfg_hooks ;
 int stub1 (int ,int ,int ,int ) ;

void
lv_adjust_loop_header_phi (basic_block first, basic_block second,
      basic_block new, edge e)
{
  if (cfg_hooks->lv_adjust_loop_header_phi)
    cfg_hooks->lv_adjust_loop_header_phi (first, second, new, e);
}
