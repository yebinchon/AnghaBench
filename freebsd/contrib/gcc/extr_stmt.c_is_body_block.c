
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ no_body_blocks; } ;


 scalar_t__ BLOCK ;
 scalar_t__ BLOCK_SUPERCONTEXT (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 TYPE_1__ lang_hooks ;

int
is_body_block (tree stmt)
{
  if (lang_hooks.no_body_blocks)
    return 0;

  if (TREE_CODE (stmt) == BLOCK)
    {
      tree parent = BLOCK_SUPERCONTEXT (stmt);

      if (parent && TREE_CODE (parent) == BLOCK)
 {
   tree grandparent = BLOCK_SUPERCONTEXT (parent);

   if (grandparent && TREE_CODE (grandparent) == FUNCTION_DECL)
     return 1;
 }
    }

  return 0;
}
