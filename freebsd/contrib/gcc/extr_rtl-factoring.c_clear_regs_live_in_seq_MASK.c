#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct propagate_block_info {int dummy; } ;
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  regset_head ;
typedef  TYPE_3__* basic_block ;
struct TYPE_8__ {TYPE_1__* rtl; } ;
struct TYPE_9__ {TYPE_2__ il; } ;
struct TYPE_7__ {int /*<<< orphan*/  global_live_at_end; } ;
typedef  int /*<<< orphan*/  HARD_REG_SET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct propagate_block_info*) ; 
 struct propagate_block_info* FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct propagate_block_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11 (HARD_REG_SET * regs, rtx insn, int length)
{
  basic_block bb;
  regset_head live;
  HARD_REG_SET hlive;
  struct propagate_block_info *pbi;
  rtx x;
  int i;

  /* Initialize liveness propagation.  */
  bb = FUNC2 (insn);
  FUNC5 (&live);
  FUNC4 (&live, bb->il.rtl->global_live_at_end);
  pbi = FUNC8 (bb, &live, NULL, NULL, 0);

  /* Propagate until INSN if found.  */
  for (x = FUNC1 (bb); x != insn;)
    x = FUNC9 (pbi, x);

  /* Clear registers live after INSN.  */
  FUNC10 (&hlive, &live);
  FUNC0 (*regs, hlive);

  /* Clear registers live in and before the sequence.  */
  for (i = 0; i < length;)
    {
      rtx prev = FUNC9 (pbi, x);

      if (FUNC6 (x))
        {
          FUNC10 (&hlive, &live);
          FUNC0 (*regs, hlive);
          i++;
        }

      x = prev;
    }

  /* Free unused data.  */
  FUNC7 (pbi);
  FUNC3 (&live);
}