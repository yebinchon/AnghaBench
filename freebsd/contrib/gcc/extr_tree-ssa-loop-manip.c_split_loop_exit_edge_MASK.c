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
typedef  scalar_t__ tree ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_5__ {int /*<<< orphan*/  dest; } ;
typedef  scalar_t__ SSA_NAME_DEF_STMT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11 (edge exit)
{
  basic_block dest = exit->dest;
  basic_block bb = FUNC8 (exit, NULL);
  tree phi, new_phi, new_name, name;
  use_operand_p op_p;

  for (phi = FUNC9 (dest); phi; phi = FUNC1 (phi))
    {
      op_p = FUNC0 (phi, FUNC10 (bb));

      name = FUNC4 (op_p);

      /* If the argument of the phi node is a constant, we do not need
	 to keep it inside loop.  */
      if (FUNC3 (name) != SSA_NAME)
	continue;

      /* Otherwise create an auxiliary phi node that will copy the value
	 of the ssa name out of the loop.  */
      new_name = FUNC7 (name, NULL);
      new_phi = FUNC6 (new_name, bb);
      SSA_NAME_DEF_STMT (new_name) = new_phi;
      FUNC5 (new_phi, name, exit);
      FUNC2 (op_p, new_name);
    }
}