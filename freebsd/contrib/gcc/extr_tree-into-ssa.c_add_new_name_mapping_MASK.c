#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_8__ {int n_bits; } ;
struct TYPE_7__ {int /*<<< orphan*/  num_total_mappings; int /*<<< orphan*/  num_virtual_symbols; int /*<<< orphan*/  virtual_symbols; int /*<<< orphan*/  num_virtual_mappings; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int NAME_SETS_GROWTH_FACTOR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  TV_TREE_SSA_INCREMENTAL ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int need_to_update_vops_p ; 
 TYPE_2__* new_ssa_names ; 
 int num_ssa_names ; 
 TYPE_2__* old_ssa_names ; 
 TYPE_2__* FUNC12 (TYPE_2__*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_1__ update_ssa_stats ; 

__attribute__((used)) static void
FUNC15 (tree new, tree old)
{
  FUNC14 (TV_TREE_SSA_INCREMENTAL);

  /* OLD and NEW must be different SSA names for the same symbol.  */
  FUNC8 (new != old && FUNC2 (new) == FUNC2 (old));

  /* We may need to grow NEW_SSA_NAMES and OLD_SSA_NAMES because our
     caller may have created new names since the set was created.  */
  if (new_ssa_names->n_bits <= num_ssa_names - 1)
    {
      unsigned int new_sz = num_ssa_names + NAME_SETS_GROWTH_FACTOR;
      new_ssa_names = FUNC12 (new_ssa_names, new_sz, 0);
      old_ssa_names = FUNC12 (old_ssa_names, new_sz, 0);
    }

  /* If this mapping is for virtual names, we will need to update
     virtual operands.  */
  if (!FUNC9 (new))
    {
      tree sym;
      size_t uid;

      need_to_update_vops_p = true;

      /* Keep counts of virtual mappings and symbols to use in the
	 virtual mapping heuristic.  If we have large numbers of
	 virtual mappings for a relatively low number of symbols, it
	 will make more sense to rename the symbols from scratch.
	 Otherwise, the insertion of PHI nodes for each of the old
	 names in these mappings will be very slow.  */
      sym = FUNC2 (new);
      uid = FUNC0 (sym);
      update_ssa_stats.num_virtual_mappings++;
      if (!FUNC5 (update_ssa_stats.virtual_symbols, uid))
	{
	  FUNC7 (update_ssa_stats.virtual_symbols, uid);
	  update_ssa_stats.num_virtual_symbols++;
	}
    }

  /* Update the REPL_TBL table.  */
  FUNC4 (new, old);

  /* If OLD had already been registered as a new name, then all the
     names that OLD replaces should also be replaced by NEW.  */
  if (FUNC10 (old))
    FUNC6 (FUNC11 (new), FUNC11 (old));

  /* Register NEW and OLD in NEW_SSA_NAMES and OLD_SSA_NAMES,
     respectively.  */
  FUNC1 (new_ssa_names, FUNC3 (new));
  FUNC1 (old_ssa_names, FUNC3 (old));

  /* Update mapping counter to use in the virtual mapping heuristic.  */
  update_ssa_stats.num_total_mappings++;

  FUNC13 (TV_TREE_SSA_INCREMENTAL);
}