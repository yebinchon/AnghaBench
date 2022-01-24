#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct occr {int deleted_p; int /*<<< orphan*/  insn; struct occr* next; } ;
struct expr {int bitmap_index; int /*<<< orphan*/ * reaching_reg; struct occr* antic_occr; struct expr* next_same_hash; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  TYPE_1__* basic_block ;
struct TYPE_5__ {unsigned int size; struct expr** table; } ;
struct TYPE_4__ {size_t index; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 TYPE_2__ expr_hash_table ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gcse_subst_count ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pre_delete_map ; 
 int /*<<< orphan*/  pre_redundant_insns ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13 (void)
{
  unsigned int i;
  int changed;
  struct expr *expr;
  struct occr *occr;

  changed = 0;
  for (i = 0; i < expr_hash_table.size; i++)
    for (expr = expr_hash_table.table[i];
	 expr != NULL;
	 expr = expr->next_same_hash)
      {
	int indx = expr->bitmap_index;

	/* We only need to search antic_occr since we require
	   ANTLOC != 0.  */

	for (occr = expr->antic_occr; occr != NULL; occr = occr->next)
	  {
	    rtx insn = occr->insn;
	    rtx set;
	    basic_block bb = FUNC0 (insn);

	    /* We only delete insns that have a single_set.  */
	    if (FUNC7 (pre_delete_map[bb->index], indx)
		&& (set = FUNC12 (insn)) != 0)
	      {
		/* Create a pseudo-reg to store the result of reaching
		   expressions into.  Get the mode for the new pseudo from
		   the mode of the original destination pseudo.  */
		if (expr->reaching_reg == NULL)
		  expr->reaching_reg
		    = FUNC11 (FUNC1 (FUNC6 (set)));

		FUNC10 (expr->reaching_reg, FUNC6 (set), insn);
		FUNC8 (insn);
		occr->deleted_p = 1;
		FUNC5 (pre_redundant_insns, FUNC2 (insn));
		changed = 1;
		gcse_subst_count++;

		if (dump_file)
		  {
		    FUNC9 (dump_file,
			     "PRE: redundant insn %d (expression %d) in ",
			       FUNC3 (insn), indx);
		    FUNC9 (dump_file, "bb %d, reaching reg is %d\n",
			     bb->index, FUNC4 (expr->reaching_reg));
		  }
	      }
	  }
      }

  return changed;
}