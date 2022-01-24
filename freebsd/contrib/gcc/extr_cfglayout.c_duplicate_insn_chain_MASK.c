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

/* Variables and functions */
 int ADDR_DIFF_VEC ; 
 int ADDR_VEC ; 
#define  BARRIER 142 
#define  CALL_INSN 141 
#define  CODE_LABEL 140 
 int FUNC0 (scalar_t__) ; 
#define  INSN 139 
#define  JUMP_INSN 138 
 scalar_t__ FUNC1 (scalar_t__) ; 
#define  NOTE 137 
#define  NOTE_INSN_BASIC_BLOCK 136 
#define  NOTE_INSN_DELETED 135 
#define  NOTE_INSN_DELETED_LABEL 134 
#define  NOTE_INSN_EPILOGUE_BEG 133 
#define  NOTE_INSN_FUNCTION_BEG 132 
#define  NOTE_INSN_FUNCTION_END 131 
#define  NOTE_INSN_PROLOGUE_END 130 
#define  NOTE_INSN_REPEATED_LINE_NUMBER 129 
#define  NOTE_INSN_SWITCH_TEXT_SECTIONS 128 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

rtx
FUNC12 (rtx from, rtx to)
{
  rtx insn, last;

  /* Avoid updating of boundaries of previous basic block.  The
     note will get removed from insn stream in fixup.  */
  last = FUNC7 (NOTE_INSN_DELETED);

  /* Create copy at the end of INSN chain.  The chain will
     be reordered later.  */
  for (insn = from; insn != FUNC1 (to); insn = FUNC1 (insn))
    {
      switch (FUNC0 (insn))
	{
	case INSN:
	case CALL_INSN:
	case JUMP_INSN:
	  /* Avoid copying of dispatch tables.  We never duplicate
	     tablejumps, so this can hit only in case the table got
	     moved far from original jump.  */
	  if (FUNC0 (FUNC3 (insn)) == ADDR_VEC
	      || FUNC0 (FUNC3 (insn)) == ADDR_DIFF_VEC)
	    break;
	  FUNC6 (insn, FUNC11 ());
	  break;

	case CODE_LABEL:
	  break;

	case BARRIER:
	  FUNC5 ();
	  break;

	case NOTE:
	  switch (FUNC2 (insn))
	    {
	      /* In case prologue is empty and function contain label
		 in first BB, we may want to copy the block.  */
	    case NOTE_INSN_PROLOGUE_END:

	    case NOTE_INSN_DELETED:
	    case NOTE_INSN_DELETED_LABEL:
	      /* No problem to strip these.  */
	    case NOTE_INSN_EPILOGUE_BEG:
	    case NOTE_INSN_FUNCTION_END:
	      /* Debug code expect these notes to exist just once.
		 Keep them in the master copy.
		 ??? It probably makes more sense to duplicate them for each
		 epilogue copy.  */
	    case NOTE_INSN_FUNCTION_BEG:
	      /* There is always just single entry to function.  */
	    case NOTE_INSN_BASIC_BLOCK:
	      break;

	    case NOTE_INSN_REPEATED_LINE_NUMBER:
	    case NOTE_INSN_SWITCH_TEXT_SECTIONS:
	      FUNC8 (insn);
	      break;

	    default:
	      /* All other notes should have already been eliminated.
	       */
	      FUNC9 (FUNC2 (insn) >= 0);

	      /* It is possible that no_line_number is set and the note
		 won't be emitted.  */
	      FUNC8 (insn);
	    }
	  break;
	default:
	  FUNC10 ();
	}
    }
  insn = FUNC1 (last);
  FUNC4 (last);
  return insn;
}