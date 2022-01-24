#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct btr_user_s {int dummy; } ;
typedef  void* rtx ;
typedef  TYPE_1__* btr_user ;
typedef  TYPE_2__* basic_block ;
struct TYPE_7__ {int index; } ;
struct TYPE_6__ {int luid; int first_reaching_def; void* use; scalar_t__ n_reaching_defs; int /*<<< orphan*/ * next; scalar_t__ other_use_this_block; void* insn; TYPE_2__* bb; } ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 void* NULL_RTX ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ dump_file ; 
 void** FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int,...) ; 
 int /*<<< orphan*/  migrate_btrl_obstack ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static btr_user
FUNC7 (basic_block bb, int insn_luid, rtx insn)
{
  /* This instruction reads target registers.  We need
     to decide whether we can replace all target register
     uses easily.
   */
  rtx *usep = FUNC4 (FUNC1 (insn));
  rtx use;
  btr_user user = NULL;

  if (usep)
    {
      int unambiguous_single_use;

      /* We want to ensure that USE is the only use of a target
	 register in INSN, so that we know that to rewrite INSN to use
	 a different target register, all we have to do is replace USE.  */
      unambiguous_single_use = !FUNC3 (FUNC1 (insn), usep);
      if (!unambiguous_single_use)
	usep = NULL;
    }
  use = usep ? *usep : NULL_RTX;
  user = FUNC6 (&migrate_btrl_obstack, sizeof (struct btr_user_s));
  user->bb = bb;
  user->luid = insn_luid;
  user->insn = insn;
  user->use = use;
  user->other_use_this_block = 0;
  user->next = NULL;
  user->n_reaching_defs = 0;
  user->first_reaching_def = -1;

  if (dump_file)
    {
      FUNC5 (dump_file, "Uses target reg: { bb %d, insn %d }",
	       bb->index, FUNC0 (insn));

      if (user->use)
	FUNC5 (dump_file, ": unambiguous use of reg %d\n",
		 FUNC2 (user->use));
    }

  return user;
}