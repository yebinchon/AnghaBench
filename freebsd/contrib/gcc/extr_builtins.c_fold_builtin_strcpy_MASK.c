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
 size_t BUILT_IN_MEMCPY ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * implicit_built_in_decls ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ optimize_size ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC13 (tree fndecl, tree arglist, tree len)
{
  tree dest, src, fn;

  if (!FUNC12 (arglist,
			 POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;

  dest = FUNC3 (arglist);
  src = FUNC3 (FUNC0 (arglist));

  /* If SRC and DEST are the same (and not volatile), return DEST.  */
  if (FUNC8 (src, dest, 0))
    return FUNC7 (FUNC2 (FUNC2 (fndecl)), dest);

  if (optimize_size)
    return 0;

  fn = implicit_built_in_decls[BUILT_IN_MEMCPY];
  if (!fn)
    return 0;

  if (!len)
    {
      len = FUNC6 (src, 1);
      if (! len || FUNC1 (len))
	return 0;
    }

  len = FUNC9 (PLUS_EXPR, len, FUNC10 (1));
  arglist = FUNC5 (NULL_TREE, len);
  arglist = FUNC11 (NULL_TREE, src, arglist);
  arglist = FUNC11 (NULL_TREE, dest, arglist);
  return FUNC7 (FUNC2 (FUNC2 (fndecl)),
		       FUNC4 (fn, arglist));
}