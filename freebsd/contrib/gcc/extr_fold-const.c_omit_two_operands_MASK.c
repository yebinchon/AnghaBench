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
 scalar_t__ COMPOUND_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

tree
FUNC5 (tree type, tree result, tree omitted1, tree omitted2)
{
  tree t = FUNC3 (type, result);

  if (FUNC1 (omitted2))
    t = FUNC2 (COMPOUND_EXPR, type, omitted2, t);
  if (FUNC1 (omitted1))
    t = FUNC2 (COMPOUND_EXPR, type, omitted1, t);

  return FUNC0 (t) != COMPOUND_EXPR ? FUNC4 (t) : t;
}