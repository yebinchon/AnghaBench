#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct def_blocks_d {int /*<<< orphan*/  def_blocks; int /*<<< orphan*/  livein_blocks; } ;
typedef  enum need_phi_state { ____Placeholder_need_phi_state } need_phi_state ;
typedef  TYPE_1__* basic_block ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  NEED_PHI_STATE_MAYBE ; 
 int NEED_PHI_STATE_NO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct def_blocks_d* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (tree var, basic_block bb)
{
  struct def_blocks_d *db_p;
  enum need_phi_state state = FUNC5 (var);

  db_p = FUNC4 (var);

  /* Set the bit corresponding to the block where VAR is live in.  */
  FUNC2 (db_p->livein_blocks, bb->index);

  /* Keep track of whether or not we may need to insert PHI nodes.

     If we reach here in NEED_PHI_STATE_NO, see if this use is dominated
     by the single block containing the definition(s) of this variable.  If
     it is, then we remain in NEED_PHI_STATE_NO, otherwise we transition to
     NEED_PHI_STATE_MAYBE.  */
  if (state == NEED_PHI_STATE_NO)
    {
      int def_block_index = FUNC1 (db_p->def_blocks);

      if (def_block_index == -1
	  || ! FUNC3 (CDI_DOMINATORS, bb,
	                       FUNC0 (def_block_index)))
	FUNC6 (var, NEED_PHI_STATE_MAYBE);
    }
  else
    FUNC6 (var, NEED_PHI_STATE_MAYBE);
}