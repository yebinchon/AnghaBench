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
struct TYPE_2__ {int fp_control_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FP0_REGNUM ; 
 int /*<<< orphan*/  current_gdbarch ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

void
FUNC4 (char *fpregs, int regno)
{
  int i;

  for (i = FP0_REGNUM; i <= FUNC1 (current_gdbarch)->fp_control_status;
       i++)
    if ((regno == i || regno == -1) && ! FUNC0 (i))
      FUNC3 (i, fpregs + ((i - FP0_REGNUM) * FUNC2 (current_gdbarch)));
}