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
typedef  int tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  int TREE_NO_WARNING ;

/* Variables and functions */
 int ADDR_EXPR ; 
 scalar_t__ CALL_EXPR ; 
 scalar_t__ COMPOUND_EXPR ; 
 scalar_t__ COND_EXPR ; 
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ INDIRECT_REF ; 
 scalar_t__ INIT_EXPR ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ MAX_EXPR ; 
 scalar_t__ METHOD_TYPE ; 
 scalar_t__ MIN_EXPR ; 
 scalar_t__ MODIFY_EXPR ; 
 int NULL_TREE ; 
 scalar_t__ OFFSET_REF ; 
 scalar_t__ PREDECREMENT_EXPR ; 
 scalar_t__ PREINCREMENT_EXPR ; 
 scalar_t__ SAVE_EXPR ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (scalar_t__,int,int,int) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 scalar_t__ processing_template_decl ; 
 int FUNC11 (int,int) ; 
 int FUNC12 (int) ; 

tree
FUNC13 (enum tree_code code, tree arg)
{
  /* Inside a template, making these kinds of adjustments is
     pointless; we are only concerned with the type of the
     expression.  */
  if (processing_template_decl)
    return NULL_TREE;

  /* Handle (a, b) used as an "lvalue".  */
  if (FUNC1 (arg) == COMPOUND_EXPR)
    {
      tree real_result = FUNC10 (code, FUNC2 (arg, 1), 0);
      return FUNC6 (COMPOUND_EXPR, FUNC4 (real_result),
		     FUNC2 (arg, 0), real_result);
    }

  /* Handle (a ? b : c) used as an "lvalue".  */
  if (FUNC1 (arg) == COND_EXPR
      || FUNC1 (arg) == MIN_EXPR || FUNC1 (arg) == MAX_EXPR)
    return FUNC11 (code, arg);

  /* Handle (a = b), (++a), and (--a) used as an "lvalue".  */
  if (FUNC1 (arg) == MODIFY_EXPR
      || FUNC1 (arg) == PREINCREMENT_EXPR
      || FUNC1 (arg) == PREDECREMENT_EXPR)
    {
      tree lvalue = FUNC2 (arg, 0);
      if (FUNC3 (lvalue))
	{
	  lvalue = FUNC12 (lvalue);
	  arg = FUNC6 (FUNC1 (arg), FUNC4 (arg),
			lvalue, FUNC2 (arg, 1));
	}
      return FUNC13
	(code, FUNC6 (COMPOUND_EXPR, FUNC4 (lvalue), arg, lvalue));
    }

  if (code != ADDR_EXPR)
    return NULL_TREE;

  /* Handle (a = b) used as an "lvalue" for `&'.  */
  if (FUNC1 (arg) == MODIFY_EXPR
      || FUNC1 (arg) == INIT_EXPR)
    {
      tree real_result = FUNC10 (code, FUNC2 (arg, 0), 0);
      arg = FUNC6 (COMPOUND_EXPR, FUNC4 (real_result),
		    arg, real_result);
      TREE_NO_WARNING (arg) = 1;
      return arg;
    }

  if (FUNC1 (FUNC4 (arg)) == FUNCTION_TYPE
      || FUNC1 (FUNC4 (arg)) == METHOD_TYPE
      || FUNC1 (arg) == OFFSET_REF)
    return NULL_TREE;

  /* We permit compiler to make function calls returning
     objects of aggregate type look like lvalues.  */
  {
    tree targ = arg;

    if (FUNC1 (targ) == SAVE_EXPR)
      targ = FUNC2 (targ, 0);

    if (FUNC1 (targ) == CALL_EXPR && FUNC0 (FUNC4 (targ)))
      {
	if (FUNC1 (arg) == SAVE_EXPR)
	  targ = arg;
	else
	  targ = FUNC8 (FUNC4 (arg), arg);
	return FUNC5 (ADDR_EXPR, FUNC9 (FUNC4 (arg)), targ);
      }

    if (FUNC1 (arg) == SAVE_EXPR && FUNC1 (targ) == INDIRECT_REF)
      return FUNC7 (SAVE_EXPR, FUNC9 (FUNC4 (arg)),
		     FUNC2 (targ, 0), current_function_decl, NULL);
  }

  /* Don't let anything else be handled specially.  */
  return NULL_TREE;
}