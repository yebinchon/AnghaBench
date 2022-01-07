
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obstack {int dummy; } ;
struct block {int dummy; } ;
struct TYPE_2__ {char const* scope; } ;


 TYPE_1__* BLOCK_NAMESPACE (struct block*) ;
 int block_initialize_namespace (struct block*,struct obstack*) ;

void
block_set_scope (struct block *block, const char *scope,
   struct obstack *obstack)
{
  block_initialize_namespace (block, obstack);

  BLOCK_NAMESPACE (block)->scope = scope;
}
