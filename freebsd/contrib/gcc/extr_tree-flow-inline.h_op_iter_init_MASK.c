#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {int done; int /*<<< orphan*/  phi_stmt; scalar_t__ num_phi; scalar_t__ phi_i; int /*<<< orphan*/ * mustkills; int /*<<< orphan*/ * mustdefs; int /*<<< orphan*/ * mayuses; int /*<<< orphan*/ * maydefs; int /*<<< orphan*/ * vuses; int /*<<< orphan*/ * uses; int /*<<< orphan*/ * defs; } ;
typedef  TYPE_1__ ssa_op_iter ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int SSA_OP_DEF ; 
 int SSA_OP_USE ; 
 int SSA_OP_VMAYDEF ; 
 int SSA_OP_VMAYUSE ; 
 int SSA_OP_VMUSTDEF ; 
 int SSA_OP_VMUSTKILL ; 
 int SSA_OP_VUSE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC7 (ssa_op_iter *ptr, tree stmt, int flags)
{
#ifdef ENABLE_CHECKING
  gcc_assert (stmt_ann (stmt));
#endif

  ptr->defs = (flags & SSA_OP_DEF) ? FUNC0 (stmt) : NULL;
  ptr->uses = (flags & SSA_OP_USE) ? FUNC3 (stmt) : NULL;
  ptr->vuses = (flags & SSA_OP_VUSE) ? FUNC4 (stmt) : NULL;
  ptr->maydefs = (flags & SSA_OP_VMAYDEF) ? FUNC1 (stmt) : NULL;
  ptr->mayuses = (flags & SSA_OP_VMAYUSE) ? FUNC1 (stmt) : NULL;
  ptr->mustdefs = (flags & SSA_OP_VMUSTDEF) ? FUNC2 (stmt) : NULL;
  ptr->mustkills = (flags & SSA_OP_VMUSTKILL) ? FUNC2 (stmt) : NULL;
  ptr->done = false;

  ptr->phi_i = 0;
  ptr->num_phi = 0;
  ptr->phi_stmt = NULL_TREE;
}