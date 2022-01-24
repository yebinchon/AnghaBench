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
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct expr {scalar_t__ reaching_reg; size_t bitmap_index; } ;
typedef  scalar_t__ rtx ;
typedef  TYPE_1__* basic_block ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {size_t index; } ;

/* Variables and functions */
 scalar_t__ ADDR_DIFF_VEC ; 
 scalar_t__ ADDR_VEC ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int EDGE_ABNORMAL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  REG_CC_SETTER ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * antloc ; 
 scalar_t__ dump_file ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  gcse_create_count ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 scalar_t__ FUNC25 (struct expr*) ; 
 int /*<<< orphan*/  record_set_info ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC27 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 int /*<<< orphan*/ * transp ; 

__attribute__((used)) static void
FUNC29 (struct expr *expr, basic_block bb, int pre)
{
  rtx insn = FUNC0 (bb);
  rtx new_insn;
  rtx reg = expr->reaching_reg;
  int regno = FUNC12 (reg);
  rtx pat, pat_end;

  pat = FUNC25 (expr);
  FUNC21 (pat && FUNC4 (pat));

  pat_end = pat;
  while (FUNC8 (pat_end) != NULL_RTX)
    pat_end = FUNC8 (pat_end);

  /* If the last insn is a jump, insert EXPR in front [taking care to
     handle cc0, etc. properly].  Similarly we need to care trapping
     instructions in presence of non-call exceptions.  */

  if (FUNC6 (insn)
      || (FUNC9 (insn)
	  && (!FUNC28 (bb)
	      || FUNC27 (bb)->flags & EDGE_ABNORMAL)))
    {
#ifdef HAVE_cc0
      rtx note;
#endif
      /* It should always be the case that we can put these instructions
	 anywhere in the basic block with performing PRE optimizations.
	 Check this.  */
      FUNC21 (!FUNC9 (insn) || !pre
		  || FUNC13 (antloc[bb->index], expr->bitmap_index)
		  || FUNC13 (transp[bb->index], expr->bitmap_index));

      /* If this is a jump table, then we can't insert stuff here.  Since
	 we know the previous real insn must be the tablejump, we insert
	 the new instruction just before the tablejump.  */
      if (FUNC3 (FUNC11 (insn)) == ADDR_VEC
	  || FUNC3 (FUNC11 (insn)) == ADDR_DIFF_VEC)
	insn = FUNC24 (insn);

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
      /* FIXME: What if something in cc0/jump uses value set in new insn?  */
      new_insn = FUNC17 (pat, insn);
    }

  /* Likewise if the last insn is a call, as will happen in the presence
     of exception handling.  */
  else if (FUNC2 (insn)
	   && (!FUNC28 (bb)
	       || FUNC27 (bb)->flags & EDGE_ABNORMAL))
    {
      /* Keeping in mind SMALL_REGISTER_CLASSES and parameters in registers,
	 we search backward and place the instructions before the first
	 parameter is loaded.  Do this for everyone for consistency and a
	 presumption that we'll get better code elsewhere as well.

	 It should always be the case that we can put these instructions
	 anywhere in the basic block with performing PRE optimizations.
	 Check this.  */

      FUNC21 (!pre
		  || FUNC13 (antloc[bb->index], expr->bitmap_index)
		  || FUNC13 (transp[bb->index], expr->bitmap_index));

      /* Since different machines initialize their parameter registers
	 in different orders, assume nothing.  Collect the set of all
	 parameter registers.  */
      insn = FUNC18 (insn, FUNC1 (bb));

      /* If we found all the parameter loads, then we want to insert
	 before the first parameter load.

	 If we did not find all the parameter loads, then we might have
	 stopped on the head of the block, which could be a CODE_LABEL.
	 If we inserted before the CODE_LABEL, then we would be putting
	 the insn in the wrong basic block.  In that case, put the insn
	 after the CODE_LABEL.  Also, respect NOTE_INSN_BASIC_BLOCK.  */
      while (FUNC7 (insn)
	     || FUNC10 (insn))
	insn = FUNC8 (insn);

      new_insn = FUNC17 (pat, insn);
    }
  else
    new_insn = FUNC16 (pat, insn);

  while (1)
    {
      if (FUNC4 (pat))
	{
	  FUNC15 (FUNC11 (pat), new_insn);
	  FUNC22 (FUNC11 (pat), record_set_info, pat);
	}
      if (pat == pat_end)
	break;
      pat = FUNC8 (pat);
    }

  gcse_create_count++;

  if (dump_file)
    {
      FUNC20 (dump_file, "PRE/HOIST: end of bb %zu, insn %d, ",
	       bb->index, FUNC5 (new_insn));
      FUNC20 (dump_file, "copying expression %zu to reg %d\n",
	       expr->bitmap_index, regno);
    }
}