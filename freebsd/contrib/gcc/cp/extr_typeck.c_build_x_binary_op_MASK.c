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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int DOTSTAR_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 int LSHIFT_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ processing_template_decl ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int) ; 
 scalar_t__ warn_parentheses ; 

tree
FUNC10 (enum tree_code code, tree arg1, enum tree_code arg1_code,
		   tree arg2, enum tree_code arg2_code, bool *overloaded_p)
{
  tree orig_arg1;
  tree orig_arg2;
  tree expr;

  orig_arg1 = arg1;
  orig_arg2 = arg2;

  if (processing_template_decl)
    {
      if (FUNC8 (arg1)
	  || FUNC8 (arg2))
	return FUNC4 (code, arg1, arg2);
      arg1 = FUNC6 (arg1);
      arg2 = FUNC6 (arg2);
    }

  if (code == DOTSTAR_EXPR)
    expr = FUNC2 (arg1, arg2);
  else
    expr = FUNC5 (code, LOOKUP_NORMAL, arg1, arg2, NULL_TREE,
			 overloaded_p);

  /* Check for cases such as x+y<<z which users are likely to
     misinterpret.  But don't warn about obj << x + y, since that is a
     common idiom for I/O.  */
  if (warn_parentheses
      && !processing_template_decl
      && !FUNC7 (arg1)
      && !FUNC7 (arg2)
      && (code != LSHIFT_EXPR
	  || !FUNC0 (FUNC1 (arg1))))
    FUNC9 (code, arg1_code, arg2_code);

  if (processing_template_decl && expr != error_mark_node)
    return FUNC3 (code, expr, orig_arg1, orig_arg2);

  return expr;
}