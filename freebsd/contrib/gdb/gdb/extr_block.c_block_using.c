
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct using_direct {int dummy; } ;
struct block {int dummy; } ;
struct TYPE_2__ {struct using_direct* using; } ;


 TYPE_1__* BLOCK_NAMESPACE (struct block const*) ;
 struct block* block_static_block (struct block const*) ;

struct using_direct *
block_using (const struct block *block)
{
  const struct block *static_block = block_static_block (block);

  if (static_block == ((void*)0)
      || BLOCK_NAMESPACE (static_block) == ((void*)0))
    return ((void*)0);
  else
    return BLOCK_NAMESPACE (static_block)->using;
}
