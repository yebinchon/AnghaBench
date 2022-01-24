#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int state_num; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ IA64_CHANGE_CFA_IN_EPILOGUE ; 
 int /*<<< orphan*/  INCOMING_FRAME_SP_OFFSET ; 
 int /*<<< orphan*/  STACK_POINTER_REGNUM ; 
 TYPE_2__* cfun ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  last_block ; 
 int need_copy_state ; 

__attribute__((used)) static void
FUNC3 (FILE *asm_out_file, rtx insn, bool unwind, bool frame)
{
  /* If this isn't the last block of the function, then we need to label the
     current state, and copy it back in at the start of the next block.  */

  if (!last_block)
    {
      if (unwind)
	FUNC1 (asm_out_file, "\t.label_state %d\n",
		 ++cfun->machine->state_num);
      need_copy_state = true;
    }

  if (unwind)
    FUNC1 (asm_out_file, "\t.restore sp\n");
  if (IA64_CHANGE_CFA_IN_EPILOGUE && frame)
    FUNC0 (FUNC2 (insn),
		       STACK_POINTER_REGNUM, INCOMING_FRAME_SP_OFFSET);
}