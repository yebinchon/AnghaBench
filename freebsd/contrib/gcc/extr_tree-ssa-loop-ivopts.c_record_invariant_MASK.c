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
struct version_info {int has_nonlin_use; scalar_t__ inv_id; int /*<<< orphan*/  name; } ;
struct ivopts_data {int /*<<< orphan*/  relevant; scalar_t__ max_inv_id; int /*<<< orphan*/  current_loop; } ;
typedef  scalar_t__ basic_block ;

/* Variables and functions */
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct version_info* FUNC7 (struct ivopts_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (struct ivopts_data *data, tree op, bool nonlinear_use)
{
  basic_block bb;
  struct version_info *info;

  if (FUNC2 (op) != SSA_NAME
      || !FUNC6 (op))
    return;

  bb = FUNC3 (FUNC0 (op));
  if (bb
      && FUNC5 (data->current_loop, bb))
    return;

  info = FUNC7 (data, op);
  info->name = op;
  info->has_nonlin_use |= nonlinear_use;
  if (!info->inv_id)
    info->inv_id = ++data->max_inv_id;
  FUNC4 (data->relevant, FUNC1 (op));
}