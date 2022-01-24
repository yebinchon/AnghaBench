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
struct affine_tree_combination {int dummy; } ;

/* Variables and functions */
 scalar_t__ HOST_BITS_PER_WIDE_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct affine_tree_combination*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct affine_tree_combination*) ; 

__attribute__((used)) static tree
FUNC4 (tree expr)
{
  tree type = FUNC0 (expr);
  struct affine_tree_combination comb;

  if (FUNC1 (type) > HOST_BITS_PER_WIDE_INT)
    return expr;

  FUNC3 (expr, type, &comb);
  return FUNC2 (&comb);
}