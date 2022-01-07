
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct df {int hardware_regs_used; } ;
struct dataflow {struct df* df; } ;
typedef int bitmap ;
typedef TYPE_1__* basic_block ;
struct TYPE_6__ {int out; } ;
struct TYPE_5__ {int index; } ;


 TYPE_1__* EXIT_BLOCK_PTR ;
 int bitmap_copy (int ,int ) ;
 TYPE_2__* df_lr_get_bb_info (struct dataflow*,int ) ;

__attribute__((used)) static void
df_lr_confluence_0 (struct dataflow *dflow, basic_block bb)
{
  struct df *df = dflow->df;

  bitmap op1 = df_lr_get_bb_info (dflow, bb->index)->out;
  if (bb != EXIT_BLOCK_PTR)
    bitmap_copy (op1, df->hardware_regs_used);
}
