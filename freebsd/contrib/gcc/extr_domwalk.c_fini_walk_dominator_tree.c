
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dom_walk_data {int block_data_stack; int free_block_data; scalar_t__ initialize_block_local_data; } ;


 int VEC_free (int ,int ,int ) ;
 scalar_t__ VEC_length (int ,int ) ;
 int VEC_pop (int ,int ) ;
 int free (int ) ;
 int heap ;
 int void_p ;

void
fini_walk_dominator_tree (struct dom_walk_data *walk_data)
{
  if (walk_data->initialize_block_local_data)
    {
      while (VEC_length (void_p, walk_data->free_block_data) > 0)
 free (VEC_pop (void_p, walk_data->free_block_data));
    }

  VEC_free (void_p, heap, walk_data->free_block_data);
  VEC_free (void_p, heap, walk_data->block_data_stack);
}
