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
 int /*<<< orphan*/  GE_EXPR ; 
 int /*<<< orphan*/  boolean_type_node ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3 (tree cond, tree a, tree b)
{
  tree compare = FUNC0 (GE_EXPR, boolean_type_node, a, b);

  if (FUNC1 (compare))
    return true;

  if (FUNC1 (cond))
    return false;

  compare = FUNC2 (cond, compare);

  return FUNC1 (compare);
}