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
 scalar_t__ CALL_EXPR ; 
 scalar_t__ MODIFY_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ WITH_SIZE_EXPR ; 

tree
FUNC2 (tree t)
{
  if (FUNC0 (t) == MODIFY_EXPR)
    t = FUNC1 (t, 1);
  if (FUNC0 (t) == WITH_SIZE_EXPR)
    t = FUNC1 (t, 0);
  if (FUNC0 (t) == CALL_EXPR)
    return t;
  return NULL_TREE;
}