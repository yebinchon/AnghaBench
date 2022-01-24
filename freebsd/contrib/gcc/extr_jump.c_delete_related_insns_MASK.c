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

/* Variables and functions */
 scalar_t__ ADDR_DIFF_VEC ; 
 scalar_t__ ADDR_VEC ; 
 int BARRIER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int CODE_LABEL ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int NOTE ; 
 scalar_t__ NOTE_INSN_FUNCTION_END ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ REG_LABEL ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,int) ; 
 scalar_t__ FUNC18 (scalar_t__,int,int) ; 
 int FUNC19 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 

rtx
FUNC22 (rtx insn)
{
  int was_code_label = (FUNC8 (insn));
  rtx note;
  rtx next = FUNC9 (insn), prev = FUNC14 (insn);

  while (next && FUNC3 (next))
    next = FUNC9 (next);

  /* This insn is already deleted => return first following nondeleted.  */
  if (FUNC3 (insn))
    return next;

  FUNC20 (insn);

  /* If instruction is followed by a barrier,
     delete the barrier too.  */

  if (next != 0 && FUNC0 (next))
    FUNC20 (next);

  /* If deleting a jump, decrement the count of the label,
     and delete the label if it is now unused.  */

  if (FUNC6 (insn) && FUNC5 (insn))
    {
      rtx lab = FUNC5 (insn), lab_next;

      if (FUNC7 (lab) == 0)
	{
	  /* This can delete NEXT or PREV,
	     either directly if NEXT is JUMP_LABEL (INSN),
	     or indirectly through more levels of jumps.  */
	  FUNC22 (lab);

	  /* I feel a little doubtful about this loop,
	     but I see no clean and sure alternative way
	     to find the first insn after INSN that is not now deleted.
	     I hope this works.  */
	  while (next && FUNC3 (next))
	    next = FUNC9 (next);
	  return next;
	}
      else if (FUNC21 (insn, NULL, &lab_next))
	{
	  /* If we're deleting the tablejump, delete the dispatch table.
	     We may not be able to kill the label immediately preceding
	     just yet, as it might be referenced in code leading up to
	     the tablejump.  */
	  FUNC22 (lab_next);
	}
    }

  /* Likewise if we're deleting a dispatch table.  */

  if (FUNC6 (insn)
      && (FUNC2 (FUNC13 (insn)) == ADDR_VEC
	  || FUNC2 (FUNC13 (insn)) == ADDR_DIFF_VEC))
    {
      rtx pat = FUNC13 (insn);
      int i, diff_vec_p = FUNC2 (pat) == ADDR_DIFF_VEC;
      int len = FUNC19 (pat, diff_vec_p);

      for (i = 0; i < len; i++)
	if (FUNC7 (FUNC17 (FUNC18 (pat, diff_vec_p, i), 0)) == 0)
	  FUNC22 (FUNC17 (FUNC18 (pat, diff_vec_p, i), 0));
      while (next && FUNC3 (next))
	next = FUNC9 (next);
      return next;
    }

  /* Likewise for an ordinary INSN / CALL_INSN with a REG_LABEL note.  */
  if (FUNC10 (insn) || FUNC1 (insn))
    for (note = FUNC15 (insn); note; note = FUNC17 (note, 1))
      if (FUNC16 (note) == REG_LABEL
	  /* This could also be a NOTE_INSN_DELETED_LABEL note.  */
	  && FUNC8 (FUNC17 (note, 0)))
	if (FUNC7 (FUNC17 (note, 0)) == 0)
	  FUNC22 (FUNC17 (note, 0));

  while (prev && (FUNC3 (prev) || FUNC12 (prev)))
    prev = FUNC14 (prev);

  /* If INSN was a label and a dispatch table follows it,
     delete the dispatch table.  The tablejump must have gone already.
     It isn't useful to fall through into a table.  */

  if (was_code_label
      && FUNC9 (insn) != 0
      && FUNC6 (FUNC9 (insn))
      && (FUNC2 (FUNC13 (FUNC9 (insn))) == ADDR_VEC
	  || FUNC2 (FUNC13 (FUNC9 (insn))) == ADDR_DIFF_VEC))
    next = FUNC22 (FUNC9 (insn));

  /* If INSN was a label, delete insns following it if now unreachable.  */

  if (was_code_label && prev && FUNC0 (prev))
    {
      enum rtx_code code;
      while (next)
	{
	  code = FUNC2 (next);
	  if (code == NOTE
	      && FUNC11 (next) != NOTE_INSN_FUNCTION_END)
	    next = FUNC9 (next);
	  /* Keep going past other deleted labels to delete what follows.  */
	  else if (code == CODE_LABEL && FUNC3 (next))
	    next = FUNC9 (next);
	  else if (code == BARRIER || FUNC4 (next))
	    /* Note: if this deletes a jump, it can cause more
	       deletion of unreachable code, after a different label.
	       As long as the value from this recursive call is correct,
	       this invocation functions correctly.  */
	    next = FUNC22 (next);
	  else
	    break;
	}
    }

  return next;
}