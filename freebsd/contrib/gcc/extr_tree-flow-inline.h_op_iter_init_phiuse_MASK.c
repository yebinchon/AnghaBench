#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  use_operand_p ;
typedef  int /*<<< orphan*/  tree ;
struct TYPE_5__ {int done; int /*<<< orphan*/  iter_type; int /*<<< orphan*/  num_phi; int /*<<< orphan*/  phi_stmt; } ;
typedef  TYPE_1__ ssa_op_iter ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_USE_OPERAND_P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SSA_OP_USE ; 
 int SSA_OP_VIRTUAL_USES ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  ssa_op_iter_use ; 

__attribute__((used)) static inline use_operand_p
FUNC6 (ssa_op_iter *ptr, tree phi, int flags)
{
  tree phi_def = FUNC1 (phi);
  int comp;

  FUNC2 (ptr);
  ptr->done = false;

  FUNC3 ((flags & (SSA_OP_USE | SSA_OP_VIRTUAL_USES)) != 0);

  comp = (FUNC4 (phi_def) ? SSA_OP_USE : SSA_OP_VIRTUAL_USES);
    
  /* If the PHI node doesn't the operand type we care about, we're done.  */
  if ((flags & comp) == 0)
    {
      ptr->done = true;
      return NULL_USE_OPERAND_P;
    }

  ptr->phi_stmt = phi;
  ptr->num_phi = FUNC0 (phi);
  ptr->iter_type = ssa_op_iter_use;
  return FUNC5 (ptr);
}