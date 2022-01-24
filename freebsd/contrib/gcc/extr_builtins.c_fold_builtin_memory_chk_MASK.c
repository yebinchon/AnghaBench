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
 size_t BUILT_IN_MEMCPY ; 
#define  BUILT_IN_MEMCPY_CHK 131 
 size_t BUILT_IN_MEMMOVE ; 
#define  BUILT_IN_MEMMOVE_CHK 130 
 size_t BUILT_IN_MEMPCPY ; 
#define  BUILT_IN_MEMPCPY_CHK 129 
 size_t BUILT_IN_MEMSET ; 
#define  BUILT_IN_MEMSET_CHK 128 
 int /*<<< orphan*/  INTEGER_TYPE ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__* built_in_decls ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC14 (tree fndecl, tree arglist, tree maxlen, bool ignore,
			 enum built_in_function fcode)
{
  tree dest, src, len, size, fn;

  if (!FUNC13 (arglist,
			 POINTER_TYPE,
			 fcode == BUILT_IN_MEMSET_CHK
			 ? INTEGER_TYPE : POINTER_TYPE,
			 INTEGER_TYPE, INTEGER_TYPE, VOID_TYPE))
    return 0;

  dest = FUNC2 (arglist);
  /* Actually val for __memset_chk, but it doesn't matter.  */
  src = FUNC2 (FUNC0 (arglist));
  len = FUNC2 (FUNC0 (FUNC0 (arglist)));
  size = FUNC2 (FUNC0 (FUNC0 (FUNC0 (arglist))));

  /* If SRC and DEST are the same (and not volatile), return DEST
     (resp. DEST+LEN for __mempcpy_chk).  */
  if (fcode != BUILT_IN_MEMSET_CHK && FUNC10 (src, dest, 0))
    {
      if (fcode != BUILT_IN_MEMPCPY_CHK)
	return FUNC9 (FUNC1 (FUNC1 (fndecl)), dest, len);
      else
	{
	  tree temp = FUNC6 (FUNC1 (dest), len);
	  temp = FUNC5 (PLUS_EXPR, FUNC1 (dest), dest, temp);
	  return FUNC6 (FUNC1 (FUNC1 (fndecl)), temp);
	}
    }

  if (! FUNC7 (size, 1))
    return 0;

  if (! FUNC8 (size))
    {
      if (! FUNC7 (len, 1))
	{
	  /* If LEN is not constant, try MAXLEN too.
	     For MAXLEN only allow optimizing into non-_ocs function
	     if SIZE is >= MAXLEN, never convert to __ocs_fail ().  */
	  if (maxlen == NULL_TREE || ! FUNC7 (maxlen, 1))
	    {
	      if (fcode == BUILT_IN_MEMPCPY_CHK && ignore)
		{
		  /* (void) __mempcpy_chk () can be optimized into
		     (void) __memcpy_chk ().  */
		  fn = built_in_decls[BUILT_IN_MEMCPY_CHK];
		  if (!fn)
		    return 0;

		  return FUNC3 (fn, arglist);
		}
	      return 0;
	    }
	}
      else
	maxlen = len;

      if (FUNC12 (size, maxlen))
	return 0;
    }

  arglist = FUNC4 (NULL_TREE, len);
  arglist = FUNC11 (NULL_TREE, src, arglist);
  arglist = FUNC11 (NULL_TREE, dest, arglist);

  fn = NULL_TREE;
  /* If __builtin_mem{cpy,pcpy,move,set}_chk is used, assume
     mem{cpy,pcpy,move,set} is available.  */
  switch (fcode)
    {
    case BUILT_IN_MEMCPY_CHK:
      fn = built_in_decls[BUILT_IN_MEMCPY];
      break;
    case BUILT_IN_MEMPCPY_CHK:
      fn = built_in_decls[BUILT_IN_MEMPCPY];
      break;
    case BUILT_IN_MEMMOVE_CHK:
      fn = built_in_decls[BUILT_IN_MEMMOVE];
      break;
    case BUILT_IN_MEMSET_CHK:
      fn = built_in_decls[BUILT_IN_MEMSET];
      break;
    default:
      break;
    }

  if (!fn)
    return 0;

  return FUNC3 (fn, arglist);
}