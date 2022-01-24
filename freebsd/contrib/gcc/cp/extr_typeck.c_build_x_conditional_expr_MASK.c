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
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  COND_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ processing_template_decl ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

tree
FUNC5 (tree ifexp, tree op1, tree op2)
{
  tree orig_ifexp = ifexp;
  tree orig_op1 = op1;
  tree orig_op2 = op2;
  tree expr;

  if (processing_template_decl)
    {
      /* The standard says that the expression is type-dependent if
	 IFEXP is type-dependent, even though the eventual type of the
	 expression doesn't dependent on IFEXP.  */
      if (FUNC4 (ifexp)
	  /* As a GNU extension, the middle operand may be omitted.  */
	  || (op1 && FUNC4 (op1))
	  || FUNC4 (op2))
	return FUNC2 (COND_EXPR, ifexp, op1, op2);
      ifexp = FUNC3 (ifexp);
      if (op1)
	op1 = FUNC3 (op1);
      op2 = FUNC3 (op2);
    }

  expr = FUNC0 (ifexp, op1, op2);
  if (processing_template_decl && expr != error_mark_node)
    return FUNC1 (COND_EXPR, expr,
			      orig_ifexp, orig_op1, orig_op2);
  return expr;
}