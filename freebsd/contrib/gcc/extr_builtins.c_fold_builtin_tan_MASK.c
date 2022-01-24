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
typedef  enum built_in_function { ____Placeholder_built_in_function } built_in_function ;

/* Variables and functions */
 int BUILT_IN_ATAN ; 
 int BUILT_IN_ATANF ; 
 int BUILT_IN_ATANL ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  REAL_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ flag_unsafe_math_optimizations ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC5 (tree arglist)
{
  enum built_in_function fcode;
  tree arg = FUNC1 (arglist);

  if (!FUNC4 (arglist, REAL_TYPE, VOID_TYPE))
    return NULL_TREE;

  /* Optimize tan(0.0) = 0.0.  */
  if (FUNC3 (arg))
    return arg;

  /* Optimize tan(atan(x)) = x.  */
  fcode = FUNC2 (arg);
  if (flag_unsafe_math_optimizations
      && (fcode == BUILT_IN_ATAN
	  || fcode == BUILT_IN_ATANF
	  || fcode == BUILT_IN_ATANL))
    return FUNC1 (FUNC0 (arg, 1));

  return NULL_TREE;
}