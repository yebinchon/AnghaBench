#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* operand_entry_t ;
struct TYPE_2__ {scalar_t__ rank; int /*<<< orphan*/  op; } ;

/* Variables and functions */
 scalar_t__ SSA_NAME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (const void *pa, const void *pb)
{
  const operand_entry_t oea = *(const operand_entry_t *)pa;
  const operand_entry_t oeb = *(const operand_entry_t *)pb;

  /* It's nicer for optimize_expression if constants that are likely
     to fold when added/multiplied//whatever are put next to each
     other.  Since all constants have rank 0, order them by type.  */
  if (oeb->rank == 0 &&  oea->rank == 0)
    return FUNC2 (oeb->op) - FUNC2 (oea->op);

  /* Lastly, make sure the versions that are the same go next to each
     other.  We use SSA_NAME_VERSION because it's stable.  */
  if ((oeb->rank - oea->rank == 0)
      && FUNC1 (oea->op) == SSA_NAME
      && FUNC1 (oeb->op) == SSA_NAME)
    return FUNC0 (oeb->op) - FUNC0 (oea->op);

  return oeb->rank - oea->rank;
}