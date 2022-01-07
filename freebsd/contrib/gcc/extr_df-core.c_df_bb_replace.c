
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct df {int num_problems_defined; struct dataflow** problems_in_order; } ;
struct dataflow {scalar_t__ block_info; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_4__ {int index; } ;


 int SET_BASIC_BLOCK (int,TYPE_1__*) ;
 void* df_get_bb_info (struct dataflow*,int) ;
 int df_grow_bb_info (struct dataflow*) ;
 int df_set_bb_info (struct dataflow*,int,void*) ;

void
df_bb_replace (struct df *df, int old_index, basic_block new_block)
{
  int p;

  for (p = 0; p < df->num_problems_defined; p++)
    {
      struct dataflow *dflow = df->problems_in_order[p];
      if (dflow->block_info)
 {
   void *temp;

   df_grow_bb_info (dflow);



   temp = df_get_bb_info (dflow, old_index);
   df_set_bb_info (dflow, old_index,
     df_get_bb_info (dflow, new_block->index));
   df_set_bb_info (dflow, new_block->index, temp);
 }
    }

  SET_BASIC_BLOCK (old_index, new_block);
  new_block->index = old_index;
}
