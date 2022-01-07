
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dom_walk_data {int * block_data_stack; int * free_block_data; } ;



void
init_walk_dominator_tree (struct dom_walk_data *walk_data)
{
  walk_data->free_block_data = ((void*)0);
  walk_data->block_data_stack = ((void*)0);
}
