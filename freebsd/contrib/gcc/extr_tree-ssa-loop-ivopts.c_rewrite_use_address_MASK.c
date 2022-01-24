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
struct ivopts_data {int /*<<< orphan*/  current_loop; } ;
struct iv_use {int /*<<< orphan*/ * op_p; int /*<<< orphan*/  stmt; } ;
struct iv_cand {int dummy; } ;
struct affine_tree_combination {int dummy; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct affine_tree_combination*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct iv_use*,struct iv_cand*,int /*<<< orphan*/ ,struct affine_tree_combination*) ; 
 int /*<<< orphan*/  FUNC5 (struct affine_tree_combination*) ; 

__attribute__((used)) static void
FUNC6 (struct ivopts_data *data,
		     struct iv_use *use, struct iv_cand *cand)
{
  struct affine_tree_combination aff;
  block_stmt_iterator bsi = FUNC1 (use->stmt);
  tree ref;

  FUNC4 (data->current_loop, use, cand, use->stmt, &aff);
  FUNC5 (&aff);

  ref = FUNC3 (&bsi, FUNC0 (*use->op_p), &aff);
  FUNC2 (ref, *use->op_p);
  *use->op_p = ref;
}