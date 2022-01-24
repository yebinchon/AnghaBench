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
struct TYPE_3__ {int /*<<< orphan*/  (* global_bindings_p ) () ;} ;
struct TYPE_4__ {TYPE_1__ decls; } ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  EQ_EXPR 133 
#define  GE_EXPR 132 
#define  GT_EXPR 131 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  LE_EXPR 130 
#define  LT_EXPR 129 
#define  NE_EXPR 128 
 int /*<<< orphan*/  NULL_TREE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUTH_NOT_EXPR ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_gimple_form ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (int) ; 

__attribute__((used)) static tree
FUNC15 (enum tree_code code, tree type, tree arg0, tree arg1)
{
  enum machine_mode mode;
  REAL_VALUE_TYPE max;
  tree temp;
  bool neg;

  mode = FUNC6 (FUNC5 (arg0));

  /* For negative infinity swap the sense of the comparison.  */
  neg = FUNC3 (FUNC4 (arg1));
  if (neg)
    code = FUNC14 (code);

  switch (code)
    {
    case GT_EXPR:
      /* x > +Inf is always false, if with ignore sNANs.  */
      if (FUNC2 (mode))
        return NULL_TREE;
      return FUNC10 (type, integer_zero_node, arg0);

    case LE_EXPR:
      /* x <= +Inf is always true, if we don't case about NaNs.  */
      if (! FUNC1 (mode))
	return FUNC10 (type, integer_one_node, arg0);

      /* x <= +Inf is the same as x == x, i.e. isfinite(x).  */
      if (lang_hooks.decls.global_bindings_p () == 0
	  && ! FUNC0 (arg0))
	{
	  arg0 = FUNC12 (arg0);
	  return FUNC9 (EQ_EXPR, type, arg0, arg0);
	}
      break;

    case EQ_EXPR:
    case GE_EXPR:
      /* x == +Inf and x >= +Inf are always equal to x > DBL_MAX.  */
      FUNC11 (&max, neg, mode);
      return FUNC9 (neg ? LT_EXPR : GT_EXPR, type,
			  arg0, FUNC7 (FUNC5 (arg0), max));

    case LT_EXPR:
      /* x < +Inf is always equal to x <= DBL_MAX.  */
      FUNC11 (&max, neg, mode);
      return FUNC9 (neg ? GE_EXPR : LE_EXPR, type,
			  arg0, FUNC7 (FUNC5 (arg0), max));

    case NE_EXPR:
      /* x != +Inf is always equal to !(x > DBL_MAX).  */
      FUNC11 (&max, neg, mode);
      if (! FUNC1 (mode))
	return FUNC9 (neg ? GE_EXPR : LE_EXPR, type,
			    arg0, FUNC7 (FUNC5 (arg0), max));

      /* The transformation below creates non-gimple code and thus is
	 not appropriate if we are in gimple form.  */
      if (in_gimple_form)
	return NULL_TREE;

      temp = FUNC9 (neg ? LT_EXPR : GT_EXPR, type,
			  arg0, FUNC7 (FUNC5 (arg0), max));
      return FUNC8 (TRUTH_NOT_EXPR, type, temp);

    default:
      break;
    }

  return NULL_TREE;
}