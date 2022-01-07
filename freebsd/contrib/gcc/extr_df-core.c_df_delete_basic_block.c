
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct df {int num_problems_defined; struct dataflow** problems_in_order; } ;
struct dataflow {TYPE_1__* problem; } ;
typedef int basic_block ;
struct TYPE_2__ {int (* free_bb_fun ) (struct dataflow*,int ,int ) ;} ;


 int BASIC_BLOCK (int) ;
 int df_get_bb_info (struct dataflow*,int) ;
 int stub1 (struct dataflow*,int ,int ) ;

void
df_delete_basic_block (struct df *df, int bb_index)
{
  basic_block bb = BASIC_BLOCK (bb_index);
  int i;

  for (i = 0; i < df->num_problems_defined; i++)
    {
      struct dataflow *dflow = df->problems_in_order[i];
      if (dflow->problem->free_bb_fun)
 dflow->problem->free_bb_fun
   (dflow, bb, df_get_bb_info (dflow, bb_index));
    }
}
