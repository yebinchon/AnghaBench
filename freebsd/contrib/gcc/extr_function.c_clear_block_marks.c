
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int TREE_ASM_WRITTEN ;


 int BLOCK_CHAIN (int ) ;
 scalar_t__ BLOCK_SUBBLOCKS (int ) ;

void
clear_block_marks (tree block)
{
  while (block)
    {
      TREE_ASM_WRITTEN (block) = 0;
      clear_block_marks (BLOCK_SUBBLOCKS (block));
      block = BLOCK_CHAIN (block);
    }
}
