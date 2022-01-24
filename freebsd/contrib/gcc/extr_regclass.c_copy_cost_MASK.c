#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int extra_cost; struct TYPE_5__* prev_sri; } ;
typedef  TYPE_1__ secondary_reload_info ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {int (* secondary_reload ) (int,int /*<<< orphan*/ ,int,int,TYPE_1__*) ;} ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int NO_REGS ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCRATCH ; 
 int*** move_cost ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int,int,TYPE_1__*) ; 
 TYPE_2__ targetm ; 

__attribute__((used)) static int
FUNC9 (rtx x, enum machine_mode mode, enum reg_class class, int to_p,
	   secondary_reload_info *prev_sri)
{
  enum reg_class secondary_class = NO_REGS;
  secondary_reload_info sri;

  /* If X is a SCRATCH, there is actually nothing to move since we are
     assuming optimal allocation.  */

  if (FUNC1 (x) == SCRATCH)
    return 0;

  /* Get the class we will actually use for a reload.  */
  class = FUNC4 (x, class);

  /* If we need a secondary reload for an intermediate, the
     cost is that to load the input into the intermediate register, then
     to copy it.  */

  sri.prev_sri = prev_sri;
  sri.extra_cost = 0;
  secondary_class = targetm.secondary_reload (to_p, x, class, mode, &sri);

  if (secondary_class != NO_REGS)
    return (move_cost[mode][(int) secondary_class][(int) class]
	    + sri.extra_cost
	    + FUNC9 (x, mode, secondary_class, to_p, &sri));

  /* For memory, use the memory move cost, for (hard) registers, use the
     cost to move between the register classes, and use 2 for everything
     else (constants).  */

  if (FUNC3 (x) || class == NO_REGS)
    return sri.extra_cost + FUNC2 (mode, class, to_p);

  else if (FUNC7 (x))
    return (sri.extra_cost
	    + move_cost[mode][(int) FUNC6 (FUNC5 (x))][(int) class]);

  else
    /* If this is a constant, we may eventually want to call rtx_cost here.  */
    return sri.extra_cost + FUNC0 (1);
}