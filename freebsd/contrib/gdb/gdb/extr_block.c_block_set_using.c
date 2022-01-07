
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct using_direct {int dummy; } ;
struct obstack {int dummy; } ;
struct block {int dummy; } ;
struct TYPE_2__ {struct using_direct* using; } ;


 TYPE_1__* BLOCK_NAMESPACE (struct block*) ;
 int block_initialize_namespace (struct block*,struct obstack*) ;

void
block_set_using (struct block *block,
   struct using_direct *using,
   struct obstack *obstack)
{
  block_initialize_namespace (block, obstack);

  BLOCK_NAMESPACE (block)->using = using;
}
