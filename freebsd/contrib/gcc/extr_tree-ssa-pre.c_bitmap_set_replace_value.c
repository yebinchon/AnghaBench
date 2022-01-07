
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* value_set_t ;
typedef TYPE_2__* value_set_node_t ;
typedef int tree ;
typedef TYPE_3__* bitmap_set_t ;
struct TYPE_9__ {int expressions; } ;
struct TYPE_8__ {int expr; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_2__* head; } ;


 scalar_t__ SSA_NAME ;
 int SSA_NAME_VERSION (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 TYPE_1__* VALUE_HANDLE_EXPR_SET (int ) ;
 scalar_t__ bitmap_bit_p (int ,int ) ;
 int bitmap_clear_bit (int ,int ) ;
 int bitmap_set_bit (int ,int ) ;
 int bitmap_set_contains_value (TYPE_3__*,int ) ;
 scalar_t__ is_gimple_min_invariant (int ) ;

__attribute__((used)) static void
bitmap_set_replace_value (bitmap_set_t set, tree lookfor, tree expr)
{
  value_set_t exprset;
  value_set_node_t node;
  if (is_gimple_min_invariant (lookfor))
    return;
  if (!bitmap_set_contains_value (set, lookfor))
    return;
  exprset = VALUE_HANDLE_EXPR_SET (lookfor);
  for (node = exprset->head; node; node = node->next)
    {
      if (TREE_CODE (node->expr) == SSA_NAME)
 {
   if (bitmap_bit_p (set->expressions, SSA_NAME_VERSION (node->expr)))
     {
       bitmap_clear_bit (set->expressions, SSA_NAME_VERSION (node->expr));
       bitmap_set_bit (set->expressions, SSA_NAME_VERSION (expr));
       return;
     }
 }
    }
}
