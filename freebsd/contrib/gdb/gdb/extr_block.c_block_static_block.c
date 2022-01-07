
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;


 struct block const* BLOCK_SUPERBLOCK (struct block const*) ;

const struct block *
block_static_block (const struct block *block)
{
  if (block == ((void*)0) || BLOCK_SUPERBLOCK (block) == ((void*)0))
    return ((void*)0);

  while (BLOCK_SUPERBLOCK (BLOCK_SUPERBLOCK (block)) != ((void*)0))
    block = BLOCK_SUPERBLOCK (block);

  return block;
}
