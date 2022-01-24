#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  TYPE_1__* btr_user ;
typedef  TYPE_2__* btr_def ;
typedef  int /*<<< orphan*/  bitmap ;
typedef  TYPE_3__* basic_block ;
struct TYPE_14__ {int index; } ;
struct TYPE_13__ {scalar_t__ insn; int btr; int other_btr_uses_before_def; TYPE_1__* uses; int /*<<< orphan*/  live_range; int /*<<< orphan*/  cost; scalar_t__ luid; TYPE_3__* bb; } ;
struct TYPE_12__ {scalar_t__ use; int /*<<< orphan*/  insn; struct TYPE_12__* next; } ;
typedef  int /*<<< orphan*/  HARD_REG_SET ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * btrs_live ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 scalar_t__ dump_file ; 
 scalar_t__ FUNC19 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,char*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 scalar_t__ FUNC22 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__,int) ; 
 int* regs_ever_live ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC25 (scalar_t__) ; 

__attribute__((used)) static void
FUNC26 (basic_block new_def_bb, int btr, btr_def def, bitmap live_range,
	     HARD_REG_SET *btrs_live_in_range)
{
  /* We can move the instruction.
     Set a target register in block NEW_DEF_BB to the value
     needed for this target register definition.
     Replace all uses of the old target register definition by
     uses of the new definition.  Delete the old definition.  */
  basic_block b = new_def_bb;
  rtx insp = FUNC1 (b);
  rtx old_insn = def->insn;
  rtx src;
  rtx btr_rtx;
  rtx new_insn;
  enum machine_mode btr_mode;
  btr_user user;
  rtx set;

  if (dump_file)
    FUNC20(dump_file, "migrating to basic block %d, using reg %d\n",
	    new_def_bb->index, btr);

  FUNC16 (def);
  def->btr = btr;
  def->bb = new_def_bb;
  def->luid = 0;
  def->cost = FUNC13 (new_def_bb);
  FUNC14 (def->live_range, live_range);
  FUNC17 (def, btrs_live_in_range);
  btr = def->btr;
  def->other_btr_uses_before_def
    = FUNC11 (btrs_live[b->index], btr) ? 1 : 0;
  FUNC12 (def, 1);
  if (FUNC6 (insp))
    insp = FUNC7 (insp);
  /* N.B.: insp is expected to be NOTE_INSN_BASIC_BLOCK now.  Some
     optimizations can result in insp being both first and last insn of
     its basic block.  */
  /* ?? some assertions to check that insp is sensible? */

  if (def->other_btr_uses_before_def)
    {
      insp = FUNC0 (b);
      for (insp = FUNC0 (b); ! FUNC3 (insp); insp = FUNC8 (insp))
	FUNC21 (insp != FUNC1 (b));

      if (FUNC5 (insp) || FUNC15 (insp))
	insp = FUNC8 (insp);
    }

  set = FUNC25 (old_insn);
  src = FUNC10 (set);
  btr_mode = FUNC2 (FUNC9 (set));
  btr_rtx = FUNC23 (btr_mode, btr);

  new_insn = FUNC22 (btr_rtx, src);

  /* Insert target register initialization at head of basic block.  */
  def->insn = FUNC19 (new_insn, insp);

  regs_ever_live[btr] = 1;

  if (dump_file)
    FUNC20 (dump_file, "New pt is insn %d, inserted after insn %d\n",
	     FUNC4 (def->insn), FUNC4 (insp));

  /* Delete the old target register initialization.  */
  FUNC18 (old_insn);

  /* Replace each use of the old target register by a use of the new target
     register.  */
  for (user = def->uses; user != NULL; user = user->next)
    {
      /* Some extra work here to ensure consistent modes, because
	 it seems that a target register REG rtx can be given a different
	 mode depending on the context (surely that should not be
	 the case?).  */
      rtx replacement_rtx;
      if (FUNC2 (user->use) == FUNC2 (btr_rtx)
	  || FUNC2 (user->use) == VOIDmode)
	replacement_rtx = btr_rtx;
      else
	replacement_rtx = FUNC23 (FUNC2 (user->use), btr);
      FUNC24 (user->insn, user->use, replacement_rtx);
      user->use = replacement_rtx;
    }
}