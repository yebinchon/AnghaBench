#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
struct TYPE_6__ {scalar_t__ next_bb; } ;
struct TYPE_5__ {TYPE_1__* machine; } ;
struct TYPE_4__ {int state_num; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EXIT_BLOCK_PTR ; 
 int const FUNC0 (scalar_t__) ; 
 scalar_t__ IA64_CHANGE_CFA_IN_EPILOGUE ; 
 int const NOTE ; 
 TYPE_3__* FUNC1 (scalar_t__) ; 
 scalar_t__ NOTE_INSN_BASIC_BLOCK ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_RTX ; 
#define  PARALLEL 129 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  REG_FRAME_RELATED_EXPR ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
#define  SET 128 
 int /*<<< orphan*/  USING_SJLJ_EXCEPTIONS ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* cfun ; 
 int FUNC8 () ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_exceptions ; 
 scalar_t__ flag_unwind_tables ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int last_block ; 
 int need_copy_state ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,int) ; 

void
FUNC14 (FILE *asm_out_file, rtx insn)
{
  bool unwind = (flag_unwind_tables
		 || (flag_exceptions && !USING_SJLJ_EXCEPTIONS));
  bool frame = FUNC8 ();

  if (unwind || frame)
    {
      rtx pat;

      if (FUNC0 (insn) == NOTE
	  && FUNC2 (insn) == NOTE_INSN_BASIC_BLOCK)
	{
	  last_block = FUNC1 (insn)->next_bb == EXIT_BLOCK_PTR;

	  /* Restore unwind state from immediately before the epilogue.  */
	  if (need_copy_state)
	    {
	      if (unwind)
		{
		  FUNC10 (asm_out_file, "\t.body\n");
		  FUNC10 (asm_out_file, "\t.copy_state %d\n",
			   cfun->machine->state_num);
		}
	      if (IA64_CHANGE_CFA_IN_EPILOGUE && frame)
		FUNC12 (insn);
	      need_copy_state = false;
	    }
	}

      if (FUNC0 (insn) == NOTE || ! FUNC4 (insn))
	return;

      pat = FUNC9 (insn, REG_FRAME_RELATED_EXPR, NULL_RTX);
      if (pat)
	pat = FUNC5 (pat, 0);
      else
	pat = FUNC3 (insn);

      switch (FUNC0 (pat))
        {
	case SET:
	  FUNC13 (asm_out_file, pat, insn, unwind, frame);
	  break;

	case PARALLEL:
	  {
	    int par_index;
	    int limit = FUNC7 (pat, 0);
	    for (par_index = 0; par_index < limit; par_index++)
	      {
		rtx x = FUNC6 (pat, 0, par_index);
		if (FUNC0 (x) == SET)
		  FUNC13 (asm_out_file, x, insn, unwind, frame);
	      }
	    break;
	  }

	default:
	  FUNC11 ();
	}
    }
}