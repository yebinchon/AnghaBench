#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum built_in_function { ____Placeholder_built_in_function } built_in_function ;
struct TYPE_3__ {scalar_t__ (* global_bindings_p ) () ;} ;
struct TYPE_4__ {TYPE_1__ decls; } ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int EQ_EXPR ; 
 int GE_EXPR ; 
 int GT_EXPR ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int LE_EXPR ; 
 int LT_EXPR ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 int NE_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int TRUTH_ANDIF_EXPR ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dconst0 ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 () ; 
 scalar_t__ FUNC18 () ; 

__attribute__((used)) static tree
FUNC19 (enum built_in_function fcode, enum tree_code code,
		     tree type, tree arg0, tree arg1)
{
  REAL_VALUE_TYPE c;

  if (FUNC0 (fcode))
    {
      tree arg = FUNC10 (FUNC7 (arg0, 1));
      enum machine_mode mode = FUNC11 (FUNC9 (arg0));

      c = FUNC8 (arg1);
      if (FUNC6 (c))
	{
	  /* sqrt(x) < y is always false, if y is negative.  */
	  if (code == EQ_EXPR || code == LT_EXPR || code == LE_EXPR)
	    return FUNC14 (type, integer_zero_node, arg);

	  /* sqrt(x) > y is always true, if y is negative and we
	     don't care about NaNs, i.e. negative values of x.  */
	  if (code == NE_EXPR || !FUNC3 (mode))
	    return FUNC14 (type, integer_one_node, arg);

	  /* sqrt(x) > y is the same as x >= 0, if y is negative.  */
	  return FUNC13 (GE_EXPR, type, arg,
			      FUNC12 (FUNC9 (arg), dconst0));
	}
      else if (code == GT_EXPR || code == GE_EXPR)
	{
	  REAL_VALUE_TYPE c2;

	  FUNC4 (c2, MULT_EXPR, c, c);
	  FUNC15 (&c2, mode, &c2);

	  if (FUNC5 (c2))
	    {
	      /* sqrt(x) > y is x == +Inf, when y is very large.  */
	      if (FUNC2 (mode))
		return FUNC13 (EQ_EXPR, type, arg,
				    FUNC12 (FUNC9 (arg), c2));

	      /* sqrt(x) > y is always false, when y is very large
		 and we don't care about infinities.  */
	      return FUNC14 (type, integer_zero_node, arg);
	    }

	  /* sqrt(x) > c is the same as x > c*c.  */
	  return FUNC13 (code, type, arg,
			      FUNC12 (FUNC9 (arg), c2));
	}
      else if (code == LT_EXPR || code == LE_EXPR)
	{
	  REAL_VALUE_TYPE c2;

	  FUNC4 (c2, MULT_EXPR, c, c);
	  FUNC15 (&c2, mode, &c2);

	  if (FUNC5 (c2))
	    {
	      /* sqrt(x) < y is always true, when y is a very large
		 value and we don't care about NaNs or Infinities.  */
	      if (! FUNC3 (mode) && ! FUNC2 (mode))
		return FUNC14 (type, integer_one_node, arg);

	      /* sqrt(x) < y is x != +Inf when y is very large and we
		 don't care about NaNs.  */
	      if (! FUNC3 (mode))
		return FUNC13 (NE_EXPR, type, arg,
				    FUNC12 (FUNC9 (arg), c2));

	      /* sqrt(x) < y is x >= 0 when y is very large and we
		 don't care about Infinities.  */
	      if (! FUNC2 (mode))
		return FUNC13 (GE_EXPR, type, arg,
				    FUNC12 (FUNC9 (arg), dconst0));

	      /* sqrt(x) < y is x >= 0 && x != +Inf, when y is large.  */
	      if (lang_hooks.decls.global_bindings_p () != 0
		  || FUNC1 (arg))
		return NULL_TREE;

	      arg = FUNC16 (arg);
	      return FUNC13 (TRUTH_ANDIF_EXPR, type,
				  FUNC13 (GE_EXPR, type, arg,
					       FUNC12 (FUNC9 (arg),
							   dconst0)),
				  FUNC13 (NE_EXPR, type, arg,
					       FUNC12 (FUNC9 (arg),
							   c2)));
	    }

	  /* sqrt(x) < c is the same as x < c*c, if we ignore NaNs.  */
	  if (! FUNC3 (mode))
	    return FUNC13 (code, type, arg,
				FUNC12 (FUNC9 (arg), c2));

	  /* sqrt(x) < c is the same as x >= 0 && x < c*c.  */
	  if (lang_hooks.decls.global_bindings_p () == 0
	      && ! FUNC1 (arg))
	    {
	      arg = FUNC16 (arg);
	      return FUNC13 (TRUTH_ANDIF_EXPR, type,
				  FUNC13 (GE_EXPR, type, arg,
					       FUNC12 (FUNC9 (arg),
							   dconst0)),
				  FUNC13 (code, type, arg,
					       FUNC12 (FUNC9 (arg),
							   c2)));
	    }
	}
    }

  return NULL_TREE;
}