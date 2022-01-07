
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ TREE_ASM_WRITTEN ;


 scalar_t__ BLOCK_CHAIN (scalar_t__) ;
 scalar_t__ BLOCK_SUBBLOCKS (scalar_t__) ;

__attribute__((used)) static int
all_blocks (tree block, tree *vector)
{
  int n_blocks = 0;

  while (block)
    {
      TREE_ASM_WRITTEN (block) = 0;


      if (vector)
 vector[n_blocks] = block;

      ++n_blocks;


      n_blocks += all_blocks (BLOCK_SUBBLOCKS (block),
         vector ? vector + n_blocks : 0);
      block = BLOCK_CHAIN (block);
    }

  return n_blocks;
}
