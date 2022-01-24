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
 size_t BUILT_IN_STRCAT_CHK ; 
 size_t BUILT_IN_STRNCAT ; 
 int /*<<< orphan*/  INTEGER_TYPE ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__* built_in_decls ; 
 char* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC14 (tree fndecl, tree arglist)
{
  tree dest, src, size, len, fn;
  const char *p;

  if (!FUNC13 (arglist, POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE,
			 INTEGER_TYPE, VOID_TYPE))
    return 0;

  dest = FUNC2 (arglist);
  src = FUNC2 (FUNC0 (arglist));
  len = FUNC2 (FUNC0 (FUNC0 (arglist)));
  size = FUNC2 (FUNC0 (FUNC0 (FUNC0 (arglist))));

  p = FUNC5 (src);
  /* If the SRC parameter is "" or if LEN is 0, return DEST.  */
  if (p && *p == '\0')
    return FUNC10 (FUNC1 (FUNC1 (fndecl)), dest, len);
  else if (FUNC9 (len))
    return FUNC10 (FUNC1 (FUNC1 (fndecl)), dest, src);

  if (! FUNC7 (size, 1))
    return 0;

  if (! FUNC8 (size))
    {
      tree src_len = FUNC6 (src, 1);
      if (src_len
	  && FUNC7 (src_len, 1)
	  && FUNC7 (len, 1)
	  && ! FUNC12 (len, src_len))
	{
	  /* If LEN >= strlen (SRC), optimize into __strcat_chk.  */
	  fn = built_in_decls[BUILT_IN_STRCAT_CHK];
	  if (!fn)
	    return 0;

	  arglist = FUNC4 (NULL_TREE, size);
	  arglist = FUNC11 (NULL_TREE, src, arglist);
	  arglist = FUNC11 (NULL_TREE, dest, arglist);
	  return FUNC3 (fn, arglist);
	}
      return 0;
    }

  arglist = FUNC4 (NULL_TREE, len);
  arglist = FUNC11 (NULL_TREE, src, arglist);
  arglist = FUNC11 (NULL_TREE, dest, arglist);

  /* If __builtin_strncat_chk is used, assume strncat is available.  */
  fn = built_in_decls[BUILT_IN_STRNCAT];
  if (!fn)
    return 0;

  return FUNC3 (fn, arglist);
}