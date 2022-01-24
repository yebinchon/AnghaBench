#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct loop {TYPE_1__* single_exit; int /*<<< orphan*/  latch; int /*<<< orphan*/  outer; int /*<<< orphan*/  header; } ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  bitmap ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_8__ {int /*<<< orphan*/  dest_idx; int /*<<< orphan*/  dest; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (struct loop*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  vect_vnames_to_rename ; 

__attribute__((used)) static void
FUNC20 (edge guard_edge, struct loop *loop,
                                    bool is_new_loop, basic_block *new_exit_bb,
                                    bitmap *defs)
{
  tree orig_phi, new_phi;
  tree update_phi, update_phi2;
  tree guard_arg, loop_arg;
  basic_block new_merge_bb = guard_edge->dest;
  edge e = FUNC0 (new_merge_bb, 0);
  basic_block update_bb = e->dest;
  basic_block orig_bb = loop->header;
  edge new_exit_e;
  tree current_new_name;
  tree name;

  /* Create new bb between loop and new_merge_bb.  */
  *new_exit_bb = FUNC19 (loop->single_exit);
  FUNC7 (*new_exit_bb, loop->outer);

  new_exit_e = FUNC0 (*new_exit_bb, 0);

  for (orig_phi = FUNC15 (orig_bb), update_phi = FUNC15 (update_bb);
       orig_phi && update_phi;
       orig_phi = FUNC2 (orig_phi), update_phi = FUNC2 (update_phi))
    {
      /* Virtual phi; Mark it for renaming. We actually want to call
	 mar_sym_for_renaming, but since all ssa renaming datastructures
	 are going to be freed before we get to call ssa_upate, we just
	 record this name for now in a bitmap, and will mark it for
	 renaming later.  */
      name = FUNC3 (orig_phi);
      if (!FUNC13 (FUNC5 (name)))
        FUNC9 (vect_vnames_to_rename, FUNC6 (name));

      /** 1. Handle new-merge-point phis  **/

      /* 1.1. Generate new phi node in NEW_MERGE_BB:  */
      new_phi = FUNC10 (FUNC5 (FUNC3 (orig_phi)),
                                 new_merge_bb);

      /* 1.2. NEW_MERGE_BB has two incoming edges: GUARD_EDGE and the exit-edge
            of LOOP. Set the two phi args in NEW_PHI for these edges:  */
      loop_arg = FUNC1 (orig_phi, FUNC0 (loop->latch, 0));
      guard_arg = FUNC1 (orig_phi, FUNC14 (loop));

      FUNC8 (new_phi, loop_arg, new_exit_e);
      FUNC8 (new_phi, guard_arg, guard_edge);

      /* 1.3. Update phi in successor block.  */
      FUNC11 (FUNC1 (update_phi, e) == loop_arg
                  || FUNC1 (update_phi, e) == guard_arg);
      FUNC4 (update_phi, e->dest_idx, FUNC3 (new_phi));
      update_phi2 = new_phi;


      /** 2. Handle loop-closed-ssa-form phis  **/

      /* 2.1. Generate new phi node in NEW_EXIT_BB:  */
      new_phi = FUNC10 (FUNC5 (FUNC3 (orig_phi)),
                                 *new_exit_bb);

      /* 2.2. NEW_EXIT_BB has one incoming edge: the exit-edge of the loop.  */
      FUNC8 (new_phi, loop_arg, loop->single_exit);

      /* 2.3. Update phi in successor of NEW_EXIT_BB:  */
      FUNC11 (FUNC1 (update_phi2, new_exit_e) == loop_arg);
      FUNC4 (update_phi2, new_exit_e->dest_idx, FUNC3 (new_phi));

      /* 2.4. Record the newly created name with set_current_def.
         We want to find a name such that
                name = get_current_def (orig_loop_name)
         and to set its current definition as follows:
                set_current_def (name, new_phi_name)

         If LOOP is a new loop then loop_arg is already the name we're
         looking for. If LOOP is the original loop, then loop_arg is
         the orig_loop_name and the relevant name is recorded in its
         current reaching definition.  */
      if (is_new_loop)
        current_new_name = loop_arg;
      else
        {
          current_new_name = FUNC12 (loop_arg);
	  /* current_def is not available only if the variable does not
	     change inside the loop, in which case we also don't care
	     about recording a current_def for it because we won't be
	     trying to create loop-exit-phis for it.  */
	  if (!current_new_name)
	    continue;
        }
      FUNC11 (FUNC12 (current_new_name) == NULL_TREE);

      FUNC17 (current_new_name, FUNC3 (new_phi));
      FUNC9 (*defs, FUNC6 (current_new_name));
    }

  FUNC18 (new_merge_bb, FUNC16 (FUNC15 (new_merge_bb)));
}