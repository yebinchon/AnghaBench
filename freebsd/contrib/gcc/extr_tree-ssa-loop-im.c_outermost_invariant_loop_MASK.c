#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct loop {int depth; } ;
typedef  TYPE_2__* basic_block ;
struct TYPE_7__ {TYPE_1__* max_loop; } ;
struct TYPE_6__ {int /*<<< orphan*/  loop_father; } ;
struct TYPE_5__ {int /*<<< orphan*/  outer; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 struct loop* FUNC4 (struct loop*,int /*<<< orphan*/ ) ; 
 struct loop* FUNC5 (struct loop*,int) ; 

__attribute__((used)) static struct loop *
FUNC6 (tree def, struct loop *loop)
{
  tree def_stmt;
  basic_block def_bb;
  struct loop *max_loop;

  if (FUNC2 (def) != SSA_NAME)
    return FUNC5 (loop, 1);

  def_stmt = FUNC1 (def);
  def_bb = FUNC3 (def_stmt);
  if (!def_bb)
    return FUNC5 (loop, 1);

  max_loop = FUNC4 (loop, def_bb->loop_father);

  if (FUNC0 (def_stmt) && FUNC0 (def_stmt)->max_loop)
    max_loop = FUNC4 (max_loop,
				 FUNC0 (def_stmt)->max_loop->outer);
  if (max_loop == loop)
    return NULL;
  max_loop = FUNC5 (loop, max_loop->depth + 1);

  return max_loop;
}