
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int block_byref_global_decl_list; } ;


 int NULL_TREE ;
 TYPE_1__* cur_block ;
 int tree_cons (int ,int ,int ) ;

void add_block_global_byref_list (tree decl)
{
  cur_block->block_byref_global_decl_list =
    tree_cons (NULL_TREE, decl, cur_block->block_byref_global_decl_list);
}
