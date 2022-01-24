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
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 size_t BUILT_IN_STRCPY ; 
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  EXPAND_NORMAL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * implicit_built_in_decls ; 
 scalar_t__ FUNC23 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC28 (tree exp, rtx target, enum machine_mode mode)
{
  tree arglist = FUNC5 (exp, 1);
  /* If return value is ignored, transform stpcpy into strcpy.  */
  if (target == const0_rtx)
    {
      tree fn = implicit_built_in_decls[BUILT_IN_STRCPY];
      if (!fn)
	return 0;

      return FUNC15 (FUNC8 (fn, arglist),
			  target, mode, EXPAND_NORMAL);
    }

  if (!FUNC27 (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;
  else
    {
      tree dst, src, len, lenp1;
      tree narglist;
      rtx ret;

      /* Ensure we get an actual string whose length can be evaluated at
	 compile-time, not an expression containing a string.  This is
	 because the latter will potentially produce pessimized code
	 when used to produce the return value.  */
      src = FUNC7 (FUNC3 (arglist));
      if (! FUNC10 (src) || ! (len = FUNC11 (src, 0)))
	return FUNC16 (FUNC7 (arglist),
			      FUNC7 (FUNC3 (arglist)),
			      target, /*endp=*/2);

      dst = FUNC7 (arglist);
      lenp1 = FUNC24 (PLUS_EXPR, len, FUNC25 (1));
      narglist = FUNC9 (NULL_TREE, lenp1);
      narglist = FUNC26 (NULL_TREE, src, narglist);
      narglist = FUNC26 (NULL_TREE, dst, narglist);
      ret = FUNC13 (narglist, FUNC6 (exp),
				    target, mode, /*endp=*/2);

      if (ret)
	return ret;

      if (FUNC4 (len) == INTEGER_CST)
	{
	  rtx len_rtx = FUNC17 (len);

	  if (FUNC0 (len_rtx) == CONST_INT)
	    {
	      ret = FUNC14 (FUNC22 (exp),
					   arglist, target, mode);

	      if (ret)
		{
		  if (! target)
		    {
		      if (mode != VOIDmode)
			target = FUNC21 (mode);
		      else
			target = FUNC21 (FUNC1 (ret));
		    }
		  if (FUNC1 (target) != FUNC1 (ret))
		    ret = FUNC20 (FUNC1 (target), ret);

		  ret = FUNC23 (ret, FUNC2 (len_rtx));
		  ret = FUNC12 (target, FUNC18 (ret, NULL_RTX));
		  FUNC19 (ret);

		  return target;
		}
	    }
	}

      return FUNC16 (FUNC7 (arglist),
			    FUNC7 (FUNC3 (arglist)),
			    target, /*endp=*/2);
    }
}