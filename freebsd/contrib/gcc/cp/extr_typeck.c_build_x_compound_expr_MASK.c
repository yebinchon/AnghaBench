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
 int /*<<< orphan*/  COMPOUND_EXPR ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ processing_template_decl ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

tree
FUNC6 (tree op1, tree op2)
{
  tree result;
  tree orig_op1 = op1;
  tree orig_op2 = op2;

  if (processing_template_decl)
    {
      if (FUNC5 (op1)
	  || FUNC5 (op2))
	return FUNC2 (COMPOUND_EXPR, op1, op2);
      op1 = FUNC4 (op1);
      op2 = FUNC4 (op2);
    }

  result = FUNC3 (COMPOUND_EXPR, LOOKUP_NORMAL, op1, op2, NULL_TREE,
			 /*overloaded_p=*/NULL);
  if (!result)
    result = FUNC0 (op1, op2);

  if (processing_template_decl && result != error_mark_node)
    return FUNC1 (COMPOUND_EXPR, result, orig_op1, orig_op2);

  return result;
}