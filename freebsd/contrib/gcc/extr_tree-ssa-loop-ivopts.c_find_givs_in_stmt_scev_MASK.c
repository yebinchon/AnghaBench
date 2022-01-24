#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct loop {int dummy; } ;
struct ivopts_data {struct loop* current_loop; } ;
struct TYPE_4__ {void* step; void* base; } ;
typedef  TYPE_1__ affine_iv ;

/* Variables and functions */
 scalar_t__ MODIFY_EXPR ; 
 void* NULL_TREE ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static bool
FUNC5 (struct ivopts_data *data, tree stmt, affine_iv *iv)
{
  tree lhs;
  struct loop *loop = data->current_loop;

  iv->base = NULL_TREE;
  iv->step = NULL_TREE;

  if (FUNC0 (stmt) != MODIFY_EXPR)
    return false;

  lhs = FUNC1 (stmt, 0);
  if (FUNC0 (lhs) != SSA_NAME)
    return false;

  if (!FUNC4 (loop, stmt, FUNC1 (stmt, 1), iv, true))
    return false;
  iv->base = FUNC3 (iv->base);

  if (FUNC2 (iv->base)
      || FUNC2 (iv->step))
    return false;

  return true;
}