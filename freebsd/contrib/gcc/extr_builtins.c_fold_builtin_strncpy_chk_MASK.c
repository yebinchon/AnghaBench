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

/* Variables and functions */
 size_t BUILT_IN_STRNCPY ; 
 int /*<<< orphan*/  INTEGER_TYPE ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * built_in_decls ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC9 (tree arglist, tree maxlen)
{
  tree dest, src, size, len, fn;

  if (!FUNC8 (arglist, POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE,
			 INTEGER_TYPE, VOID_TYPE))
    return 0;

  dest = FUNC1 (arglist);
  src = FUNC1 (FUNC0 (arglist));
  len = FUNC1 (FUNC0 (FUNC0 (arglist)));
  size = FUNC1 (FUNC0 (FUNC0 (FUNC0 (arglist))));

  if (! FUNC4 (size, 1))
    return 0;

  if (! FUNC5 (size))
    {
      if (! FUNC4 (len, 1))
	{
	  /* If LEN is not constant, try MAXLEN too.
	     For MAXLEN only allow optimizing into non-_ocs function
	     if SIZE is >= MAXLEN, never convert to __ocs_fail ().  */
	  if (maxlen == NULL_TREE || ! FUNC4 (maxlen, 1))
	    return 0;
	}
      else
	maxlen = len;

      if (FUNC7 (size, maxlen))
	return 0;
    }

  arglist = FUNC3 (NULL_TREE, len);
  arglist = FUNC6 (NULL_TREE, src, arglist);
  arglist = FUNC6 (NULL_TREE, dest, arglist);

  /* If __builtin_strncpy_chk is used, assume strncpy is available.  */
  fn = built_in_decls[BUILT_IN_STRNCPY];
  if (!fn)
    return 0;

  return FUNC2 (fn, arglist);
}