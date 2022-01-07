
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audit_tree {int dummy; } ;
struct audit_chunk {int count; TYPE_1__* owners; } ;
struct TYPE_2__ {struct audit_tree* owner; } ;



int audit_tree_match(struct audit_chunk *chunk, struct audit_tree *tree)
{
 int n;
 for (n = 0; n < chunk->count; n++)
  if (chunk->owners[n].owner == tree)
   return 1;
 return 0;
}
