
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_2__ {char const* scope; } ;


 TYPE_1__* BLOCK_NAMESPACE (struct block const*) ;
 struct block* BLOCK_SUPERBLOCK (struct block const*) ;

const char *
block_scope (const struct block *block)
{
  for (; block != ((void*)0); block = BLOCK_SUPERBLOCK (block))
    {
      if (BLOCK_NAMESPACE (block) != ((void*)0)
   && BLOCK_NAMESPACE (block)->scope != ((void*)0))
 return BLOCK_NAMESPACE (block)->scope;
    }

  return "";
}
