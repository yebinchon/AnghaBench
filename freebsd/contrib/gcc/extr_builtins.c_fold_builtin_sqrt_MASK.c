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
typedef  enum built_in_function { ____Placeholder_built_in_function } built_in_function ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_EXPR ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int BUILT_IN_POW ; 
 int BUILT_IN_POWF ; 
 int BUILT_IN_POWL ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ REAL_CST ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REAL_TYPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 int FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  dconsthalf ; 
 int /*<<< orphan*/  dconstthird ; 
 int /*<<< orphan*/  flag_errno_math ; 
 int /*<<< orphan*/  flag_trapping_math ; 
 scalar_t__ flag_unsafe_math_optimizations ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC24 (tree arglist, tree type)
{

  enum built_in_function fcode;
  tree arg = FUNC10 (arglist);

  if (!FUNC23 (arglist, REAL_TYPE, VOID_TYPE))
    return NULL_TREE;

  /* Optimize sqrt of constant value.  */
  if (FUNC6 (arg) == REAL_CST
      && ! FUNC7 (arg))
    {
      REAL_VALUE_TYPE r, x;

      x = FUNC9 (arg);
      if (FUNC19 (&r, FUNC11 (type), &x)
	  || (!flag_trapping_math && !flag_errno_math))
	return FUNC14 (type, r);
    }

  /* Optimize sqrt(expN(x)) = expN(x*0.5).  */
  fcode = FUNC16 (arg);
  if (flag_unsafe_math_optimizations && FUNC0 (fcode))
    {
      tree expfn = FUNC8 (FUNC8 (arg, 0), 0);
      arg = FUNC17 (MULT_EXPR, type,
			 FUNC10 (FUNC8 (arg, 1)),
			 FUNC14 (type, dconsthalf));
      arglist = FUNC15 (NULL_TREE, arg);
      return FUNC13 (expfn, arglist);
    }

  /* Optimize sqrt(Nroot(x)) -> pow(x,1/(2*N)).  */
  if (flag_unsafe_math_optimizations && FUNC1 (fcode))
    {
      tree powfn = FUNC18 (type, BUILT_IN_POW);

      if (powfn)
	{
	  tree arg0 = FUNC10 (FUNC8 (arg, 1));
	  tree tree_root;
	  /* The inner root was either sqrt or cbrt.  */
	  REAL_VALUE_TYPE dconstroot =
	    FUNC2 (fcode) ? dconsthalf : dconstthird;

	  /* Adjust for the outer root.  */
	  FUNC4 (&dconstroot, FUNC3 (&dconstroot) - 1);
	  dconstroot = FUNC20 (FUNC11 (type), dconstroot);
	  tree_root = FUNC14 (type, dconstroot);
	  arglist = FUNC21 (NULL_TREE, arg0,
			       FUNC15 (NULL_TREE, tree_root));
	  return FUNC13 (powfn, arglist);
	}
    }

  /* Optimize sqrt(pow(x,y)) = pow(|x|,y*0.5).  */
  if (flag_unsafe_math_optimizations
      && (fcode == BUILT_IN_POW
	  || fcode == BUILT_IN_POWF
	  || fcode == BUILT_IN_POWL))
    {
      tree powfn = FUNC8 (FUNC8 (arg, 0), 0);
      tree arg0 = FUNC10 (FUNC8 (arg, 1));
      tree arg1 = FUNC10 (FUNC5 (FUNC8 (arg, 1)));
      tree narg1;
      if (!FUNC22 (arg0))
	arg0 = FUNC12 (ABS_EXPR, type, arg0);
      narg1 = FUNC17 (MULT_EXPR, type, arg1,
			   FUNC14 (type, dconsthalf));
      arglist = FUNC21 (NULL_TREE, arg0,
			   FUNC15 (NULL_TREE, narg1));
      return FUNC13 (powfn, arglist);
    }

  return NULL_TREE;
}