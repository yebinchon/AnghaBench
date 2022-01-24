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
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  sizetype ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC8 (tree exp)
{
  tree arglist = FUNC1 (exp, 1);
  tree dest, size, newarglist;

  if (!FUNC7 (arglist, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    return NULL_RTX;

  dest = FUNC2 (arglist);
  size = FUNC2 (FUNC0 (arglist));

  /* New argument list transforming bzero(ptr x, int y) to
     memset(ptr x, int 0, size_t y).   This is done this way
     so that if it isn't expanded inline, we fallback to
     calling bzero instead of memset.  */

  newarglist = FUNC3 (NULL_TREE, FUNC5 (sizetype, size));
  newarglist = FUNC6 (NULL_TREE, integer_zero_node, newarglist);
  newarglist = FUNC6 (NULL_TREE, dest, newarglist);

  return FUNC4 (newarglist, const0_rtx, VOIDmode, exp);
}