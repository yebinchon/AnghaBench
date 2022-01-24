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
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* btr_user ;
typedef  TYPE_3__* btr_def ;
typedef  int /*<<< orphan*/ * bitmap ;
struct TYPE_9__ {int btr; int other_btr_uses_after_use; int /*<<< orphan*/  insn; int /*<<< orphan*/ * live_range; TYPE_2__* uses; int /*<<< orphan*/  bb; int /*<<< orphan*/  has_ambiguous_use; struct TYPE_9__* next_this_group; TYPE_1__* group; } ;
struct TYPE_8__ {scalar_t__ insn; int /*<<< orphan*/  use; struct TYPE_8__* next; int /*<<< orphan*/  bb; } ;
struct TYPE_7__ {TYPE_3__* members; } ;
typedef  int /*<<< orphan*/  HARD_REG_SET ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_DEAD ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_btr_bb_exclusive ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,char*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17 (btr_def def, HARD_REG_SET *btrs_live_in_range)
{
  btr_def other_def;

  for (other_def = def->group->members;
       other_def != NULL;
       other_def = other_def->next_this_group)
    {
      if (other_def != def
	  && other_def->uses != NULL
	  && ! other_def->has_ambiguous_use
	  && FUNC13 (CDI_DOMINATORS, other_def->bb, def->bb))
	{
	  /* def->bb dominates the other def, so def and other_def could
	     be combined.  */
	  /* Merge their live ranges, and get the set of
	     target registers live over the merged range.  */
	  int btr;
	  HARD_REG_SET combined_btrs_live;
	  bitmap combined_live_range = FUNC1 (NULL);
	  btr_user user;

	  if (other_def->live_range == NULL)
	    {
	      HARD_REG_SET dummy_btrs_live_in_range;
	      FUNC9 (other_def, &dummy_btrs_live_in_range);
	    }
	  FUNC3 (combined_btrs_live, *btrs_live_in_range);
	  FUNC8 (combined_live_range, def->live_range);

	  for (user = other_def->uses; user != NULL; user = user->next)
	    FUNC7 (combined_live_range, &combined_btrs_live,
				def->bb, user->bb,
				(flag_btr_bb_exclusive
				 || user->insn != FUNC0 (def->bb)
				 || !FUNC5 (user->insn)));

	  btr = FUNC10 (combined_btrs_live);
	  if (btr != -1)
	    {
	      /* We can combine them.  */
	      if (dump_file)
		FUNC15 (dump_file,
			 "Combining def in insn %d with def in insn %d\n",
			 FUNC4 (other_def->insn), FUNC4 (def->insn));

	      def->btr = btr;
	      user = other_def->uses;
	      while (user != NULL)
		{
		  btr_user next = user->next;

		  user->next = def->uses;
		  def->uses = user;
		  user = next;
		}
	      /* Combining def/use webs can make target registers live
		 after uses where they previously were not.  This means
		 some REG_DEAD notes may no longer be correct.  We could
		 be more precise about this if we looked at the combined
		 live range, but here I just delete any REG_DEAD notes
		 in case they are no longer correct.  */
	      for (user = def->uses; user != NULL; user = user->next)
		FUNC16 (user->insn,
			     FUNC14 (user->insn, REG_DEAD,
					      FUNC6 (user->use)));
	      FUNC11 (other_def);
	      other_def->uses = NULL;
	      FUNC8 (def->live_range, combined_live_range);
	      if (other_def->btr == btr && other_def->other_btr_uses_after_use)
		def->other_btr_uses_after_use = 1;
	      FUNC3 (*btrs_live_in_range, combined_btrs_live);

	      /* Delete the old target register initialization.  */
	      FUNC12 (other_def->insn);

	    }
	  FUNC2 (combined_live_range);
	}
    }
}