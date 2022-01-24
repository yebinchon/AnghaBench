#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 scalar_t__ ADDR_DIFF_VEC ; 
 scalar_t__ ADDR_VEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int EDGE_ABNORMAL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  REG_CC_SETTER ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

rtx
FUNC21 (rtx pat, basic_block bb)
{
  rtx insn = FUNC0 (bb);
  rtx new_insn;
  rtx pat_end = pat;

  while (FUNC7 (pat_end) != NULL_RTX)
    pat_end = FUNC7 (pat_end);

  /* If the last insn is a jump, insert EXPR in front [taking care to
     handle cc0, etc. properly].  Similarly we need to care trapping
     instructions in presence of non-call exceptions.  */

  if (FUNC5 (insn)
      || (FUNC8 (insn)
          && (!FUNC20 (bb)
              || FUNC19 (bb)->flags & EDGE_ABNORMAL)))
    {
#ifdef HAVE_cc0
      rtx note;
#endif
      /* If this is a jump table, then we can't insert stuff here.  Since
         we know the previous real insn must be the tablejump, we insert
         the new instruction just before the tablejump.  */
      if (FUNC3 (FUNC10 (insn)) == ADDR_VEC
          || FUNC3 (FUNC10 (insn)) == ADDR_DIFF_VEC)
        insn = FUNC17 (insn);

#ifdef HAVE_cc0
      /* FIXME: 'twould be nice to call prev_cc0_setter here but it aborts
         if cc0 isn't set.  */
      note = find_reg_note (insn, REG_CC_SETTER, NULL_RTX);
      if (note)
        insn = XEXP (note, 0);
      else
        {
          rtx maybe_cc0_setter = prev_nonnote_insn (insn);
          if (maybe_cc0_setter
              && INSN_P (maybe_cc0_setter)
              && sets_cc0_p (PATTERN (maybe_cc0_setter)))
            insn = maybe_cc0_setter;
        }
#endif
      /* FIXME: What if something in cc0/jump uses value set in new
         insn?  */
      new_insn = FUNC13 (pat, insn);
    }

  /* Likewise if the last insn is a call, as will happen in the presence
     of exception handling.  */
  else if (FUNC2 (insn)
           && (!FUNC20 (bb)
               || FUNC19 (bb)->flags & EDGE_ABNORMAL))
    {
      /* Keeping in mind SMALL_REGISTER_CLASSES and parameters in registers,
         we search backward and place the instructions before the first
         parameter is loaded.  Do this for everyone for consistency and a
         presumption that we'll get better code elsewhere as well.  */

      /* Since different machines initialize their parameter registers
         in different orders, assume nothing.  Collect the set of all
         parameter registers.  */
      insn = FUNC14 (insn, FUNC1 (bb));

      /* If we found all the parameter loads, then we want to insert
         before the first parameter load.

         If we did not find all the parameter loads, then we might have
         stopped on the head of the block, which could be a CODE_LABEL.
         If we inserted before the CODE_LABEL, then we would be putting
         the insn in the wrong basic block.  In that case, put the insn
         after the CODE_LABEL.  Also, respect NOTE_INSN_BASIC_BLOCK.  */
      while (FUNC6 (insn)
             || FUNC9 (insn))
        insn = FUNC7 (insn);

      new_insn = FUNC13 (pat, insn);
    }
  else
    new_insn = FUNC12 (pat, insn);

  return new_insn;
}