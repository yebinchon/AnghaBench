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
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
#define  BARRIER 133 
 scalar_t__ FUNC0 (scalar_t__) ; 
#define  CALL_INSN 132 
#define  CODE_LABEL 131 
 int /*<<< orphan*/  ENTRY_BLOCK_PTR ; 
 int FUNC1 (scalar_t__) ; 
#define  INSN 130 
#define  JUMP_INSN 129 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
#define  NOTE 128 
 int NOTE_INSN_BASIC_BLOCK ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ last_basic_block ; 
 scalar_t__ n_basic_blocks ; 

__attribute__((used)) static void
FUNC12 (rtx f)
{
  rtx insn, next;
  rtx bb_note = NULL_RTX;
  rtx head = NULL_RTX;
  rtx end = NULL_RTX;
  basic_block prev = ENTRY_BLOCK_PTR;

  /* We process the instructions in a slightly different way than we did
     previously.  This is so that we see a NOTE_BASIC_BLOCK after we have
     closed out the previous block, so that it gets attached at the proper
     place.  Since this form should be equivalent to the previous,
     count_basic_blocks continues to use the old form as a check.  */

  for (insn = f; insn; insn = next)
    {
      enum rtx_code code = FUNC1 (insn);

      next = FUNC3 (insn);

      if ((FUNC2 (insn) || FUNC0 (insn))
	  && head)
	{
	  prev = FUNC7 (head, end, bb_note, prev);
	  head = end = NULL_RTX;
	  bb_note = NULL_RTX;
	}

      if (FUNC11 (insn))
	{
	  if (head == NULL_RTX)
	    head = insn;
	  end = insn;
	}

      if (head && FUNC6 (insn))
	{
	  prev = FUNC7 (head, end, bb_note, prev);
	  head = end = NULL_RTX;
	  bb_note = NULL_RTX;
	}

      switch (code)
	{
	case NOTE:
	  {
	    int kind = FUNC4 (insn);

	    /* Look for basic block notes with which to keep the
	       basic_block_info pointers stable.  Unthread the note now;
	       we'll put it back at the right place in create_basic_block.
	       Or not at all if we've already found a note in this block.  */
	    if (kind == NOTE_INSN_BASIC_BLOCK)
	      {
		if (bb_note == NULL_RTX)
		  bb_note = insn;
		else
		  next = FUNC8 (insn);
	      }
	    break;
	  }

	case CODE_LABEL:
	case JUMP_INSN:
	case CALL_INSN:
	case INSN:
	case BARRIER:
	  break;

	default:
	  FUNC10 ();
	}
    }

  if (head != NULL_RTX)
    FUNC7 (head, end, bb_note, prev);
  else if (bb_note)
    FUNC8 (bb_note);

  FUNC9 (last_basic_block == n_basic_blocks);

  FUNC5 ();
}