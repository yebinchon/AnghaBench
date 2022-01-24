#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* tree ;
struct expr_hash_elt {int /*<<< orphan*/  hash; void* lhs; void* rhs; int /*<<< orphan*/ * stmt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ COND_EXPR ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 scalar_t__ GOTO_EXPR ; 
 scalar_t__ RETURN_EXPR ; 
 void* FUNC3 (void*) ; 
 scalar_t__ SWITCH_EXPR ; 
 scalar_t__ FUNC4 (void*) ; 
 void* FUNC5 (void*,int) ; 
 scalar_t__ TRUTH_NOT_EXPR ; 
 int /*<<< orphan*/  FUNC6 (struct expr_hash_elt*) ; 

__attribute__((used)) static void
FUNC7 (tree expr, tree lhs, struct expr_hash_elt *element)
{
  /* Hash table elements may be based on conditional expressions or statements.

     For the former case, we have no annotation and we want to hash the
     conditional expression.  In the latter case we have an annotation and
     we want to record the expression the statement evaluates.  */
  if (FUNC0 (expr) || FUNC4 (expr) == TRUTH_NOT_EXPR)
    {
      element->stmt = NULL;
      element->rhs = expr;
    }
  else if (FUNC4 (expr) == COND_EXPR)
    {
      element->stmt = expr;
      element->rhs = FUNC1 (expr);
    }
  else if (FUNC4 (expr) == SWITCH_EXPR)
    {
      element->stmt = expr;
      element->rhs = FUNC3 (expr);
    }
  else if (FUNC4 (expr) == RETURN_EXPR && FUNC5 (expr, 0))
    {
      element->stmt = expr;
      element->rhs = FUNC5 (FUNC5 (expr, 0), 1);
    }
  else if (FUNC4 (expr) == GOTO_EXPR)
    {
      element->stmt = expr;
      element->rhs = FUNC2 (expr);
    }
  else
    {
      element->stmt = expr;
      element->rhs = FUNC5 (expr, 1);
    }

  element->lhs = lhs;
  element->hash = FUNC6 (element);
}