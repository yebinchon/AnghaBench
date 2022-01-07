
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * label_to_block_map ;

void
delete_tree_cfg_annotations (void)
{
  label_to_block_map = ((void*)0);
}
