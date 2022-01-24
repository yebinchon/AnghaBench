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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
#define  CALL_INSN 130 
#define  CODE_LABEL 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  JUMP_INSN 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nonlocal_goto_handler_labels ; 

__attribute__((used)) static int FUNC2 (rtx insn)
{
  switch (FUNC0 (insn))
    {
    case CODE_LABEL:
    case JUMP_INSN:
      /* These always end a basic block.  */
      return 1;

    case CALL_INSN:
      /* A CALL_INSN might be the last insn of a basic block, if it is inside
	 an EH region or if there are nonlocal gotos.  Note that this test is
	 very conservative.  */
      if (nonlocal_goto_handler_labels)
	return 1;
      /* Fall through.  */
    default:
      return FUNC1 (insn);
    }
}