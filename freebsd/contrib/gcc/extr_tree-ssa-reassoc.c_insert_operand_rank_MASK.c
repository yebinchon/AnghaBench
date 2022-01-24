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
typedef  TYPE_1__* operand_entry_t ;
struct TYPE_4__ {unsigned int rank; int /*<<< orphan*/  op; } ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void** FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  operand_entry_pool ; 
 int /*<<< orphan*/  operand_rank ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (tree e, unsigned int rank)
{
  void **slot;
  operand_entry_t new_pair = FUNC2 (operand_entry_pool);

  new_pair->op = e;
  new_pair->rank = rank;
  slot = FUNC1 (operand_rank, new_pair, INSERT);
  FUNC0 (*slot == NULL);
  *slot = new_pair;
}