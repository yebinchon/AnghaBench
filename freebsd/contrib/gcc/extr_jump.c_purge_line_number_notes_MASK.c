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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NOTE_INSN_FUNCTION_BEG ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 () ; 

unsigned int
FUNC7 (void)
{
  rtx last_note = 0;
  rtx insn;
  /* Delete extraneous line number notes.
     Note that two consecutive notes for different lines are not really
     extraneous.  There should be some indication where that line belonged,
     even if it became empty.  */

  for (insn = FUNC6 (); insn; insn = FUNC0 (insn))
    if (FUNC2 (insn))
      {
	if (FUNC1 (insn) == NOTE_INSN_FUNCTION_BEG)
	  /* Any previous line note was for the prologue; gdb wants a new
	     note after the prologue even if it is for the same line.  */
	  last_note = NULL_RTX;
	else if (FUNC1 (insn) >= 0)
	  {
	    /* Delete this note if it is identical to previous note.  */
	    if (last_note
#ifdef USE_MAPPED_LOCATION
		&& NOTE_SOURCE_LOCATION (insn) == NOTE_SOURCE_LOCATION (last_note)
#else
		&& FUNC3 (insn) == FUNC3 (last_note)
		&& FUNC1 (insn) == FUNC1 (last_note)
#endif
)
	      {
		FUNC5 (insn);
		continue;
	      }

	    last_note = insn;
	  }
      }
  return 0;
}