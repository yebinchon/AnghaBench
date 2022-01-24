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
 size_t BUILT_IN_STRCAT ; 
 int /*<<< orphan*/  INTEGER_TYPE ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * built_in_decls ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC11 (tree fndecl, tree arglist)
{
  tree dest, src, size, fn;
  const char *p;

  if (!FUNC10 (arglist, POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE,
			 VOID_TYPE))
    return 0;

  dest = FUNC2 (arglist);
  src = FUNC2 (FUNC0 (arglist));
  size = FUNC2 (FUNC0 (FUNC0 (arglist)));

  p = FUNC5 (src);
  /* If the SRC parameter is "", return DEST.  */
  if (p && *p == '\0')
    return FUNC8 (FUNC1 (FUNC1 (fndecl)), dest, src);

  if (! FUNC6 (size, 1) || ! FUNC7 (size))
    return 0;

  arglist = FUNC4 (NULL_TREE, src);
  arglist = FUNC9 (NULL_TREE, dest, arglist);

  /* If __builtin_strcat_chk is used, assume strcat is available.  */
  fn = built_in_decls[BUILT_IN_STRCAT];
  if (!fn)
    return 0;

  return FUNC3 (fn, arglist);
}