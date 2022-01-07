
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct expr_hash_elt {int hash; void* lhs; void* rhs; int * stmt; } ;


 scalar_t__ COMPARISON_CLASS_P (void*) ;
 scalar_t__ COND_EXPR ;
 void* COND_EXPR_COND (void*) ;
 void* GOTO_DESTINATION (void*) ;
 scalar_t__ GOTO_EXPR ;
 scalar_t__ RETURN_EXPR ;
 void* SWITCH_COND (void*) ;
 scalar_t__ SWITCH_EXPR ;
 scalar_t__ TREE_CODE (void*) ;
 void* TREE_OPERAND (void*,int) ;
 scalar_t__ TRUTH_NOT_EXPR ;
 int avail_expr_hash (struct expr_hash_elt*) ;

__attribute__((used)) static void
initialize_hash_element (tree expr, tree lhs, struct expr_hash_elt *element)
{





  if (COMPARISON_CLASS_P (expr) || TREE_CODE (expr) == TRUTH_NOT_EXPR)
    {
      element->stmt = ((void*)0);
      element->rhs = expr;
    }
  else if (TREE_CODE (expr) == COND_EXPR)
    {
      element->stmt = expr;
      element->rhs = COND_EXPR_COND (expr);
    }
  else if (TREE_CODE (expr) == SWITCH_EXPR)
    {
      element->stmt = expr;
      element->rhs = SWITCH_COND (expr);
    }
  else if (TREE_CODE (expr) == RETURN_EXPR && TREE_OPERAND (expr, 0))
    {
      element->stmt = expr;
      element->rhs = TREE_OPERAND (TREE_OPERAND (expr, 0), 1);
    }
  else if (TREE_CODE (expr) == GOTO_EXPR)
    {
      element->stmt = expr;
      element->rhs = GOTO_DESTINATION (expr);
    }
  else
    {
      element->stmt = expr;
      element->rhs = TREE_OPERAND (expr, 1);
    }

  element->lhs = lhs;
  element->hash = avail_expr_hash (element);
}
