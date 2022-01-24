#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct loop {TYPE_1__* single_exit; int /*<<< orphan*/  outer; } ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_18__ {int /*<<< orphan*/  preds; } ;
struct TYPE_17__ {int /*<<< orphan*/  dest_idx; TYPE_2__* src; TYPE_2__* dest; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC17 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC18 (edge guard_edge, struct loop *loop,
                                    bool is_new_loop, basic_block *new_exit_bb)
{
  tree orig_phi, new_phi;
  tree update_phi, update_phi2;
  tree guard_arg, loop_arg;
  basic_block new_merge_bb = guard_edge->dest;
  edge e = FUNC2 (new_merge_bb, 0);
  basic_block update_bb = e->dest;
  edge new_exit_e;
  tree orig_def, orig_def_new_name;
  tree new_name, new_name2;
  tree arg;

  /* Create new bb between loop and new_merge_bb.  */
  *new_exit_bb = FUNC17 (loop->single_exit);
  FUNC9 (*new_exit_bb, loop->outer);

  new_exit_e = FUNC2 (*new_exit_bb, 0);

  for (update_phi = FUNC14 (update_bb); update_phi; 
       update_phi = FUNC4 (update_phi))
    {
      orig_phi = update_phi;
      orig_def = FUNC3 (orig_phi, e);
      /* This loop-closed-phi actually doesn't represent a use
         out of the loop - the phi arg is a constant.  */ 
      if (FUNC8 (orig_def) != SSA_NAME)
        continue;
      orig_def_new_name = FUNC13 (orig_def);
      arg = NULL_TREE;

      /** 1. Handle new-merge-point phis  **/

      /* 1.1. Generate new phi node in NEW_MERGE_BB:  */
      new_phi = FUNC11 (FUNC7 (FUNC5 (orig_phi)),
                                 new_merge_bb);

      /* 1.2. NEW_MERGE_BB has two incoming edges: GUARD_EDGE and the exit-edge
            of LOOP. Set the two PHI args in NEW_PHI for these edges:  */
      new_name = orig_def;
      new_name2 = NULL_TREE;
      if (orig_def_new_name)
        {
          new_name = orig_def_new_name;
	  /* Some variables have both loop-entry-phis and loop-exit-phis.
	     Such variables were given yet newer names by phis placed in
	     guard_bb by slpeel_update_phi_nodes_for_guard1. I.e:
	     new_name2 = get_current_def (get_current_def (orig_name)).  */
          new_name2 = FUNC13 (new_name);
        }
  
      if (is_new_loop)
        {
          guard_arg = orig_def;
          loop_arg = new_name;
        }
      else
        {
          guard_arg = new_name;
          loop_arg = orig_def;
        }
      if (new_name2)
        guard_arg = new_name2;
  
      FUNC10 (new_phi, loop_arg, new_exit_e);
      FUNC10 (new_phi, guard_arg, guard_edge);

      /* 1.3. Update phi in successor block.  */
      FUNC12 (FUNC3 (update_phi, e) == orig_def);
      FUNC6 (update_phi, e->dest_idx, FUNC5 (new_phi));
      update_phi2 = new_phi;


      /** 2. Handle loop-closed-ssa-form phis  **/

      /* 2.1. Generate new phi node in NEW_EXIT_BB:  */
      new_phi = FUNC11 (FUNC7 (FUNC5 (orig_phi)),
                                 *new_exit_bb);

      /* 2.2. NEW_EXIT_BB has one incoming edge: the exit-edge of the loop.  */
      FUNC10 (new_phi, loop_arg, loop->single_exit);

      /* 2.3. Update phi in successor of NEW_EXIT_BB:  */
      FUNC12 (FUNC3 (update_phi2, new_exit_e) == loop_arg);
      FUNC6 (update_phi2, new_exit_e->dest_idx, FUNC5 (new_phi));


      /** 3. Handle loop-closed-ssa-form phis for first loop  **/

      /* 3.1. Find the relevant names that need an exit-phi in
	 GUARD_BB, i.e. names for which
	 slpeel_update_phi_nodes_for_guard1 had not already created a
	 phi node. This is the case for names that are used outside
	 the loop (and therefore need an exit phi) but are not updated
	 across loop iterations (and therefore don't have a
	 loop-header-phi).

	 slpeel_update_phi_nodes_for_guard1 is responsible for
	 creating loop-exit phis in GUARD_BB for names that have a
	 loop-header-phi.  When such a phi is created we also record
	 the new name in its current definition.  If this new name
	 exists, then guard_arg was set to this new name (see 1.2
	 above).  Therefore, if guard_arg is not this new name, this
	 is an indication that an exit-phi in GUARD_BB was not yet
	 created, so we take care of it here.  */
      if (guard_arg == new_name2)
	continue;
      arg = guard_arg;

      /* 3.2. Generate new phi node in GUARD_BB:  */
      new_phi = FUNC11 (FUNC7 (FUNC5 (orig_phi)),
                                 guard_edge->src);

      /* 3.3. GUARD_BB has one incoming edge:  */
      FUNC12 (FUNC0 (guard_edge->src->preds) == 1);
      FUNC10 (new_phi, arg, FUNC1 (guard_edge->src, 0));

      /* 3.4. Update phi in successor of GUARD_BB:  */
      FUNC12 (FUNC3 (update_phi2, guard_edge)
                                                                == guard_arg);
      FUNC6 (update_phi2, guard_edge->dest_idx, FUNC5 (new_phi));
    }

  FUNC16 (new_merge_bb, FUNC15 (FUNC14 (new_merge_bb)));
}