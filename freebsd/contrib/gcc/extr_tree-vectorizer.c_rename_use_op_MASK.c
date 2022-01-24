#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  use_operand_p ;
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (use_operand_p op_p)
{
  tree new_name;

  if (FUNC1 (FUNC2 (op_p)) != SSA_NAME)
    return;

  new_name = FUNC3 (FUNC2 (op_p));

  /* Something defined outside of the loop.  */
  if (!new_name)
    return;

  /* An ordinary ssa name defined in the loop.  */

  FUNC0 (op_p, new_name);
}