#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sbitmap ;
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  fibheap_t ;
struct TYPE_22__ {int /*<<< orphan*/  btrs_written_in_block; int /*<<< orphan*/  btrs_live_in_block; TYPE_4__* users_this_bb; int /*<<< orphan*/  bb_gen; int /*<<< orphan*/ * btr_defset; } ;
typedef  TYPE_3__ defs_uses_info ;
typedef  TYPE_4__* btr_user ;
typedef  int /*<<< orphan*/ * btr_def_group ;
typedef  TYPE_5__* btr_def ;
typedef  TYPE_6__* basic_block ;
struct TYPE_21__ {TYPE_1__* rtl; } ;
struct TYPE_25__ {TYPE_2__ il; } ;
struct TYPE_24__ {struct TYPE_24__* next_this_bb; } ;
struct TYPE_23__ {int other_use_this_block; scalar_t__ insn; struct TYPE_23__* next; scalar_t__ use; } ;
struct TYPE_20__ {int /*<<< orphan*/  global_live_at_end; int /*<<< orphan*/  global_live_at_start; } ;
typedef  int /*<<< orphan*/  HARD_REG_SET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ASM_INPUT ; 
 TYPE_6__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_6__*) ; 
 scalar_t__ FUNC3 (TYPE_6__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int NUM_FIXED_BLOCKS ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ RETURN ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC22 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC23 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC24 (int /*<<< orphan*/ ,TYPE_6__*,int,scalar_t__,int,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  all_btrs ; 
 scalar_t__ FUNC25 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * btrs_live ; 
 int /*<<< orphan*/ * btrs_live_at_end ; 
 int /*<<< orphan*/  call_used_reg_set ; 
 scalar_t__ FUNC26 (scalar_t__) ; 
 scalar_t__ current_function_has_nonlocal_label ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 scalar_t__ dump_file ; 
 int first_btr ; 
 scalar_t__ FUNC28 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int last_btr ; 
 int n_basic_blocks ; 
 TYPE_4__* FUNC29 (TYPE_6__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC31 (int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC32 (scalar_t__,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*),TYPE_3__*) ; 
 scalar_t__ FUNC33 (int,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * regno_reg_rtx ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC37 (fibheap_t all_btr_defs, btr_def *def_array,
			   btr_user *use_array, sbitmap *btr_defset,
			   sbitmap *bb_gen, HARD_REG_SET *btrs_written)
{
  /* Scan the code building up the set of all defs and all uses.
     For each target register, build the set of defs of that register.
     For each block, calculate the set of target registers
     written in that block.
     Also calculate the set of btrs ever live in that block.
  */
  int i;
  int insn_luid = 0;
  btr_def_group all_btr_def_groups = NULL;
  defs_uses_info info;

  FUNC35 (bb_gen, n_basic_blocks);
  for (i = NUM_FIXED_BLOCKS; i < n_basic_blocks; i++)
    {
      basic_block bb = FUNC1 (i);
      int reg;
      btr_def defs_this_bb = NULL;
      rtx insn;
      rtx last;
      int can_throw = 0;

      info.users_this_bb = NULL;
      info.bb_gen = bb_gen[i];
      info.btr_defset = btr_defset;

      FUNC5 (info.btrs_live_in_block);
      FUNC5 (info.btrs_written_in_block);
      for (reg = first_btr; reg <= last_btr; reg++)
	if (FUNC21 (all_btrs, reg)
	    && FUNC17 (bb->il.rtl->global_live_at_start, reg))
	  FUNC20 (info.btrs_live_in_block, reg);

      for (insn = FUNC3 (bb), last = FUNC13 (FUNC2 (bb));
	   insn != last;
	   insn = FUNC13 (insn), insn_luid++)
	{
	  if (FUNC9 (insn))
	    {
	      int regno;
	      int insn_uid = FUNC10 (insn);

	      if (FUNC28 (insn, 0, &regno))
		{
		  btr_def def = FUNC24 (
		      all_btr_defs, bb, insn_luid, insn, regno,
		      FUNC21 (info.btrs_live_in_block, regno),
		      &all_btr_def_groups);

		  def_array[insn_uid] = def;
		  FUNC20 (info.btrs_written_in_block, regno);
		  FUNC20 (info.btrs_live_in_block, regno);
		  FUNC34 (bb_gen[i], bb_gen[i],
				      btr_defset[regno - first_btr]);
		  FUNC19 (bb_gen[i], insn_uid);
		  def->next_this_bb = defs_this_bb;
		  defs_this_bb = def;
		  FUNC19 (btr_defset[regno - first_btr], insn_uid);
		  FUNC31 (regno, info.users_this_bb);
		}
	      /* Check for the blockage emitted by expand_nl_goto_receiver.  */
	      else if (current_function_has_nonlocal_label
		       && FUNC8 (FUNC14 (insn)) == ASM_INPUT)
		{
		  btr_user user;

		  /* Do the equivalent of calling note_other_use_this_block
		     for every target register.  */
		  for (user = info.users_this_bb; user != NULL;
		       user = user->next)
		    if (user->use)
		      user->other_use_this_block = 1;
		  FUNC11 (info.btrs_written_in_block, all_btrs);
		  FUNC11 (info.btrs_live_in_block, all_btrs);
		  FUNC36 (info.bb_gen);
		}
	      else
		{
		  if (FUNC25 (FUNC14 (insn), NULL))
		    {
		      btr_user user = FUNC29 (bb, insn_luid, insn);

		      use_array[insn_uid] = user;
		      if (user->use)
			FUNC20 (info.btrs_live_in_block,
					  FUNC16 (user->use));
		      else
			{
			  int reg;
			  for (reg = first_btr; reg <= last_btr; reg++)
			    if (FUNC21 (all_btrs, reg)
				&& FUNC33 (reg, reg + 1, user->insn,
						      NULL))
			      {
				FUNC31 (reg,
							   info.users_this_bb);
				FUNC20 (info.btrs_live_in_block, reg);
			      }
			  FUNC32 (FUNC14 (insn), note_btr_set, &info);
			}
		      user->next = info.users_this_bb;
		      info.users_this_bb = user;
		    }
		  if (FUNC4 (insn))
		    {
		      HARD_REG_SET *clobbered = &call_used_reg_set;
		      HARD_REG_SET call_saved;
		      rtx pat = FUNC14 (insn);
		      int i;

		      /* Check for sibcall.  */
		      if (FUNC8 (pat) == PARALLEL)
			for (i = FUNC23 (pat, 0) - 1; i >= 0; i--)
			  if (FUNC8 (FUNC22 (pat, 0, i)) == RETURN)
			    {
			      FUNC6 (call_saved,
						  call_used_reg_set);
			      clobbered = &call_saved;
			    }

		      for (regno = first_btr; regno <= last_btr; regno++)
			if (FUNC21 (*clobbered, regno))
			  FUNC30 (regno_reg_rtx[regno], NULL_RTX, &info);
		    }
		}
	    }
	}

      FUNC7 (btrs_live[i], info.btrs_live_in_block);
      FUNC7 (btrs_written[i], info.btrs_written_in_block);

      FUNC18 (btrs_live_at_end[i], bb->il.rtl->global_live_at_end);
      /* If this block ends in a jump insn, add any uses or even clobbers
	 of branch target registers that it might have.  */
      for (insn = FUNC2 (bb); insn != FUNC3 (bb) && ! FUNC9 (insn); )
	insn = FUNC15 (insn);
      /* ??? for the fall-through edge, it would make sense to insert the
	 btr set on the edge, but that would require to split the block
	 early on so that we can distinguish between dominance from the fall
	 through edge - which can use the call-clobbered registers - from
	 dominance by the throw edge.  */
      if (FUNC26 (insn))
	{
	  HARD_REG_SET tmp;

	  FUNC7 (tmp, call_used_reg_set);
	  FUNC0 (tmp, all_btrs);
	  FUNC11 (btrs_live_at_end[i], tmp);
	  can_throw = 1;
	}
      if (can_throw || FUNC12 (insn))
	{
	  int regno;

	  for (regno = first_btr; regno <= last_btr; regno++)
	    if (FUNC33 (regno, regno+1, insn, NULL))
	      FUNC20 (btrs_live_at_end[i], regno);
	}

      if (dump_file)
	FUNC27(i);
    }
}