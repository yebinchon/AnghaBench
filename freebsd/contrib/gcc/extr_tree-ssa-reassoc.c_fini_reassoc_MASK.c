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
struct TYPE_2__ {int linearized; int constants_eliminated; int ops_eliminated; int rewritten; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_POST_DOMINATORS ; 
 int TDF_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bb_rank ; 
 int /*<<< orphan*/  broken_up_subtracts ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  heap ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  operand_entry_pool ; 
 int /*<<< orphan*/  operand_rank ; 
 TYPE_1__ reassociate_stats ; 
 int /*<<< orphan*/  tree ; 

__attribute__((used)) static void
FUNC6 (void)
{

  if (dump_file && (dump_flags & TDF_STATS))
    {
      FUNC1 (dump_file, "Reassociation stats:\n");
      FUNC1 (dump_file, "Linearized: %d\n", 
	       reassociate_stats.linearized);
      FUNC1 (dump_file, "Constants eliminated: %d\n",
	       reassociate_stats.constants_eliminated);
      FUNC1 (dump_file, "Ops eliminated: %d\n",
	       reassociate_stats.ops_eliminated);
      FUNC1 (dump_file, "Statements rewritten: %d\n",
	       reassociate_stats.rewritten);
    }
  FUNC5 (operand_rank);

  FUNC3 (operand_entry_pool);
  FUNC2 (bb_rank);
  FUNC0 (tree, heap, broken_up_subtracts);
  FUNC4 (CDI_POST_DOMINATORS);
}