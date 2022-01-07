
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct sra_elt {struct sra_elt* sibling; int element; TYPE_1__* parent; int is_group; } ;
struct TYPE_2__ {struct sra_elt* children; } ;


 scalar_t__ RANGE_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int gcc_assert (int ) ;
 int gcc_unreachable () ;
 int tree_int_cst_lt (int ,int ) ;

__attribute__((used)) static struct sra_elt *
next_child_for_group (struct sra_elt *child, struct sra_elt *group)
{
  gcc_assert (group->is_group);


  if (child)
    child = child->sibling;
  else
    child = group->parent->children;


  while (child)
    {
      tree g_elt = group->element;
      if (TREE_CODE (g_elt) == RANGE_EXPR)
 {
   if (!tree_int_cst_lt (child->element, TREE_OPERAND (g_elt, 0))
       && !tree_int_cst_lt (TREE_OPERAND (g_elt, 1), child->element))
     break;
 }
      else
 gcc_unreachable ();

      child = child->sibling;
    }

  return child;
}
