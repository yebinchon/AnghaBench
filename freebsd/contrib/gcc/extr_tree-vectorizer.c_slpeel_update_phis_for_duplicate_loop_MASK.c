#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct loop {int /*<<< orphan*/  header; TYPE_1__* single_exit; } ;
typedef  TYPE_1__* edge ;
struct TYPE_6__ {int /*<<< orphan*/  dest_idx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 TYPE_1__* FUNC8 (struct loop*) ; 
 TYPE_1__* FUNC9 (struct loop*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (struct loop *orig_loop,
				       struct loop *new_loop, bool after)
{
  tree new_ssa_name;
  tree phi_new, phi_orig;
  tree def;
  edge orig_loop_latch = FUNC8 (orig_loop);
  edge orig_entry_e = FUNC9 (orig_loop);
  edge new_loop_exit_e = new_loop->single_exit;
  edge new_loop_entry_e = FUNC9 (new_loop);
  edge entry_arg_e = (after ? orig_loop_latch : orig_entry_e);

  /*
     step 1. For each loop-header-phi:
             Add the first phi argument for the phi in NEW_LOOP
            (the one associated with the entry of NEW_LOOP)

     step 2. For each loop-header-phi:
             Add the second phi argument for the phi in NEW_LOOP
            (the one associated with the latch of NEW_LOOP)

     step 3. Update the phis in the successor block of NEW_LOOP.

        case 1: NEW_LOOP was placed before ORIG_LOOP:
                The successor block of NEW_LOOP is the header of ORIG_LOOP.
                Updating the phis in the successor block can therefore be done
                along with the scanning of the loop header phis, because the
                header blocks of ORIG_LOOP and NEW_LOOP have exactly the same
                phi nodes, organized in the same order.

        case 2: NEW_LOOP was placed after ORIG_LOOP:
                The successor block of NEW_LOOP is the original exit block of 
                ORIG_LOOP - the phis to be updated are the loop-closed-ssa phis.
                We postpone updating these phis to a later stage (when
                loop guards are added).
   */


  /* Scan the phis in the headers of the old and new loops
     (they are organized in exactly the same order).  */

  for (phi_new = FUNC10 (new_loop->header),
       phi_orig = FUNC10 (orig_loop->header);
       phi_new && phi_orig;
       phi_new = FUNC1 (phi_new), phi_orig = FUNC1 (phi_orig))
    {
      /* step 1.  */
      def = FUNC0 (phi_orig, entry_arg_e);
      FUNC5 (phi_new, def, new_loop_entry_e);

      /* step 2.  */
      def = FUNC0 (phi_orig, orig_loop_latch);
      if (FUNC4 (def) != SSA_NAME)
        continue;

      new_ssa_name = FUNC7 (def);
      if (!new_ssa_name)
	{
	  /* This only happens if there are no definitions
	     inside the loop. use the phi_result in this case.  */
	  new_ssa_name = FUNC2 (phi_new);
	}

      /* An ordinary ssa name defined in the loop.  */
      FUNC5 (phi_new, new_ssa_name, FUNC8 (new_loop));

      /* step 3 (case 1).  */
      if (!after)
        {
          FUNC6 (new_loop_exit_e == orig_entry_e);
          FUNC3 (phi_orig,
                           new_loop_exit_e->dest_idx,
                           new_ssa_name);
        }
    }
}