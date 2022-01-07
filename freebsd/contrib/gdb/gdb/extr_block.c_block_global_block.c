
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;


 struct block* BLOCK_SUPERBLOCK (struct block const*) ;

const struct block *
block_global_block (const struct block *block)
{
  if (block == ((void*)0))
    return ((void*)0);

  while (BLOCK_SUPERBLOCK (block) != ((void*)0))
    block = BLOCK_SUPERBLOCK (block);

  return block;
}
