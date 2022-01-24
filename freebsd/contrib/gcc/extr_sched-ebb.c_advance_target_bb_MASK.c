#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  TYPE_1__* basic_block ;
struct TYPE_9__ {struct TYPE_9__* next_bb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_1__* last_bb ; 

__attribute__((used)) static basic_block
FUNC8 (basic_block bb, rtx insn)
{
  if (insn)
    {
      if (FUNC2 (insn) != bb
	  && FUNC6 (insn)
	  /* We handle interblock movement of the speculation check
	     or over a speculation check in
	     haifa-sched.c: move_block_after_check ().  */
	  && !FUNC3 (insn)
	  && !FUNC3 (FUNC0 (bb)))
	{
	  /* Assert that we don't move jumps across blocks.  */
	  FUNC7 (!FUNC6 (FUNC0 (bb))
		      && FUNC4 (FUNC1 (bb->next_bb)));
	  return bb;
	}
      else
	return 0;
    }
  else
    /* Return next non empty block.  */
    {
      do
	{
	  FUNC7 (bb != last_bb);

	  bb = bb->next_bb;
	}
      while (FUNC5 (bb) == FUNC0 (bb));

      return bb;
    }
}