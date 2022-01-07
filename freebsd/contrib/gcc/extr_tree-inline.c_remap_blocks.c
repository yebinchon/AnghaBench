
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef int copy_body_data ;


 int * BLOCK_CHAIN (int *) ;
 int * BLOCK_SUBBLOCKS (int *) ;
 int add_lexical_block (int *,int *) ;
 int gcc_assert (int) ;
 int remap_block (int **,int *) ;

__attribute__((used)) static tree
remap_blocks (tree block, copy_body_data *id)
{
  tree t;
  tree new = block;

  if (!block)
    return ((void*)0);

  remap_block (&new, id);
  gcc_assert (new != block);
  for (t = BLOCK_SUBBLOCKS (block); t ; t = BLOCK_CHAIN (t))
    add_lexical_block (new, remap_blocks (t, id));
  return new;
}
