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

/* Variables and functions */
 size_t BUILT_IN_MEMCPY_CHK ; 
 size_t BUILT_IN_STPCPY ; 
 int BUILT_IN_STPCPY_CHK ; 
 size_t BUILT_IN_STRCPY ; 
 int BUILT_IN_STRCPY_CHK ; 
 int /*<<< orphan*/  INTEGER_TYPE ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__* built_in_decls ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC16 (tree fndecl, tree arglist, tree maxlen, bool ignore,
			 enum built_in_function fcode)
{
  tree dest, src, size, len, fn;

  if (!FUNC15 (arglist, POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE,
			 VOID_TYPE))
    return 0;

  dest = FUNC3 (arglist);
  src = FUNC3 (FUNC0 (arglist));
  size = FUNC3 (FUNC0 (FUNC0 (arglist)));

  /* If SRC and DEST are the same (and not volatile), return DEST.  */
  if (fcode == BUILT_IN_STRCPY_CHK && FUNC10 (src, dest, 0))
    return FUNC7 (FUNC2 (FUNC2 (fndecl)), dest);

  if (! FUNC8 (size, 1))
    return 0;

  if (! FUNC9 (size))
    {
      len = FUNC6 (src, 1);
      if (! len || ! FUNC8 (len, 1))
	{
	  /* If LEN is not constant, try MAXLEN too.
	     For MAXLEN only allow optimizing into non-_ocs function
	     if SIZE is >= MAXLEN, never convert to __ocs_fail ().  */
	  if (maxlen == NULL_TREE || ! FUNC8 (maxlen, 1))
	    {
	      if (fcode == BUILT_IN_STPCPY_CHK)
		{
		  if (! ignore)
		    return 0;

		  /* If return value of __stpcpy_chk is ignored,
		     optimize into __strcpy_chk.  */
		  fn = built_in_decls[BUILT_IN_STRCPY_CHK];
		  if (!fn)
		    return 0;

		  return FUNC4 (fn, arglist);
		}

	      if (! len || FUNC1 (len))
		return 0;

	      /* If c_strlen returned something, but not a constant,
		 transform __strcpy_chk into __memcpy_chk.  */
	      fn = built_in_decls[BUILT_IN_MEMCPY_CHK];
	      if (!fn)
		return 0;

	      len = FUNC11 (PLUS_EXPR, len, FUNC12 (1));
	      arglist = FUNC5 (NULL_TREE, size);
	      arglist = FUNC13 (NULL_TREE, len, arglist);
	      arglist = FUNC13 (NULL_TREE, src, arglist);
	      arglist = FUNC13 (NULL_TREE, dest, arglist);
	      return FUNC7 (FUNC2 (FUNC2 (fndecl)),
				   FUNC4 (fn, arglist));
	    }
	}
      else
	maxlen = len;

      if (! FUNC14 (maxlen, size))
	return 0;
    }

  arglist = FUNC5 (NULL_TREE, src);
  arglist = FUNC13 (NULL_TREE, dest, arglist);

  /* If __builtin_st{r,p}cpy_chk is used, assume st{r,p}cpy is available.  */
  fn = built_in_decls[fcode == BUILT_IN_STPCPY_CHK
		      ? BUILT_IN_STPCPY : BUILT_IN_STRCPY];
  if (!fn)
    return 0;

  return FUNC4 (fn, arglist);
}