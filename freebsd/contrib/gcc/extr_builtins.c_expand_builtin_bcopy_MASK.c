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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  INTEGER_TYPE ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sizetype ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC9 (tree exp)
{
  tree arglist = FUNC1 (exp, 1);
  tree type = FUNC2 (exp);
  tree src, dest, size, newarglist;

  if (!FUNC8 (arglist,
			 POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    return NULL_RTX;

  src = FUNC3 (arglist);
  dest = FUNC3 (FUNC0 (arglist));
  size = FUNC3 (FUNC0 (FUNC0 (arglist)));

  /* New argument list transforming bcopy(ptr x, ptr y, int z) to
     memmove(ptr y, ptr x, size_t z).   This is done this way
     so that if it isn't expanded inline, we fallback to
     calling bcopy instead of memmove.  */

  newarglist = FUNC4 (NULL_TREE, FUNC6 (sizetype, size));
  newarglist = FUNC7 (NULL_TREE, src, newarglist);
  newarglist = FUNC7 (NULL_TREE, dest, newarglist);

  return FUNC5 (newarglist, type, const0_rtx, VOIDmode, exp);
}