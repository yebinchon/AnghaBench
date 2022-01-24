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
struct loop {int /*<<< orphan*/  outer; } ;
typedef  scalar_t__ bitmap ;
typedef  TYPE_1__* basic_block ;
struct TYPE_4__ {unsigned int index; struct loop* loop_father; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (basic_block bb, tree use, bitmap *use_blocks,
			 bitmap need_phis)
{
  unsigned ver;
  basic_block def_bb;
  struct loop *def_loop;

  if (FUNC3 (use) != SSA_NAME)
    return;

  /* We don't need to keep virtual operands in loop-closed form.  */
  if (!FUNC6 (use))
    return;

  ver = FUNC2 (use);
  def_bb = FUNC4 (FUNC1 (use));
  if (!def_bb)
    return;
  def_loop = def_bb->loop_father;

  /* If the definition is not inside loop, it is not interesting.  */
  if (!def_loop->outer)
    return;

  if (!use_blocks[ver])
    use_blocks[ver] = FUNC0 (NULL);
  FUNC5 (use_blocks[ver], bb->index);

  FUNC5 (need_phis, ver);
}