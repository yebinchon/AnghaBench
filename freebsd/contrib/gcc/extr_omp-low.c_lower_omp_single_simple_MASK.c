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
 size_t BUILT_IN_GOMP_SINGLE_START ; 
 int /*<<< orphan*/  COND_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * built_in_decls ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC4 (tree single_stmt, tree *pre_p)
{
  tree t;

  t = built_in_decls[BUILT_IN_GOMP_SINGLE_START];
  t = FUNC2 (t, NULL);
  t = FUNC1 (COND_EXPR, void_type_node, t,
	      FUNC0 (single_stmt), NULL);
  FUNC3 (t, pre_p);
}