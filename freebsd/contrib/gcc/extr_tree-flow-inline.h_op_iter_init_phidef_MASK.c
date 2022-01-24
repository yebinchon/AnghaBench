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
struct TYPE_4__ {int done; int /*<<< orphan*/  iter_type; } ;
typedef  TYPE_1__ ssa_op_iter ;
typedef  int /*<<< orphan*/  def_operand_p ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_USE_OPERAND_P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SSA_OP_DEF ; 
 int SSA_OP_VIRTUAL_DEFS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssa_op_iter_def ; 

__attribute__((used)) static inline def_operand_p
FUNC5 (ssa_op_iter *ptr, tree phi, int flags)
{
  tree phi_def = FUNC0 (phi);
  int comp;

  FUNC2 (ptr);
  ptr->done = false;

  FUNC3 ((flags & (SSA_OP_DEF | SSA_OP_VIRTUAL_DEFS)) != 0);

  comp = (FUNC4 (phi_def) ? SSA_OP_DEF : SSA_OP_VIRTUAL_DEFS);
    
  /* If the PHI node doesn't the operand type we care about, we're done.  */
  if ((flags & comp) == 0)
    {
      ptr->done = true;
      return NULL_USE_OPERAND_P;
    }

  ptr->iter_type = ssa_op_iter_def;
  /* The first call to op_iter_next_def will terminate the iterator since
     all the fields are NULL.  Simply return the result here as the first and
     therefore only result.  */
  return FUNC1 (phi);
}