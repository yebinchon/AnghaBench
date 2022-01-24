#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;
struct TYPE_3__ {int (* issue_rate ) () ;} ;
struct TYPE_4__ {int (* branch_target_register_class ) () ;int /*<<< orphan*/  (* branch_target_register_callee_saved ) (int) ;TYPE_1__ sched; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  CLEANUP_EXPENSIVE ; 
 int NO_REGS ; 
 int PROP_DEATH_NOTES ; 
 int PROP_REG_INFO ; 
 int /*<<< orphan*/  UPDATE_LIFE_GLOBAL_RM_NOTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int issue_rate ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ optimize ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_2__ targetm ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC9 (bool after_prologue_epilogue_gen)
{
  enum reg_class class = targetm.branch_target_register_class ();
  if (class != NO_REGS)
    {
      /* Initialize issue_rate.  */
      if (targetm.sched.issue_rate)
	issue_rate = targetm.sched.issue_rate ();
      else
	issue_rate = 1;

      /* Build the CFG for migrate_btr_defs.  */
#if 1
      /* This may or may not be needed, depending on where we
	 run this phase.  */
      FUNC1 (optimize ? CLEANUP_EXPENSIVE : 0);
#endif

      FUNC3 (0);

      /* Dominator info is also needed for migrate_btr_def.  */
      FUNC0 (CDI_DOMINATORS);
      FUNC4 (class,
		       (targetm.branch_target_register_callee_saved
			(after_prologue_epilogue_gen)));

      FUNC2 (CDI_DOMINATORS);

      FUNC8 (NULL, UPDATE_LIFE_GLOBAL_RM_NOTES,
			PROP_DEATH_NOTES | PROP_REG_INFO);
    }
}