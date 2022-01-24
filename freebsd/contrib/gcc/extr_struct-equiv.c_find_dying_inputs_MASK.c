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
struct TYPE_2__ {int local_count; } ;
struct equiv_info {int* local_rvalue; scalar_t__ dying_inputs; int /*<<< orphan*/  x_local_live; int /*<<< orphan*/ * x_local; TYPE_1__ cur; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 unsigned int FIRST_PSEUDO_REGISTER ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int** hard_regno_nregs ; 

__attribute__((used)) static void
FUNC3 (struct equiv_info *info)
{
  int i;

  info->dying_inputs = 0;
  for (i = info->cur.local_count-1; i >=0; i--)
    {
      rtx x = info->x_local[i];
      unsigned regno = FUNC1 (x);
      int nregs = (regno >= FIRST_PSEUDO_REGISTER
		   ? 1 : hard_regno_nregs[regno][FUNC0 (x)]);

      for (info->local_rvalue[i] = false; nregs > 0; regno++, --nregs)
	if (FUNC2 (info->x_local_live, regno))
	  {
	    info->dying_inputs++;
	    info->local_rvalue[i] = true;
	    break;
	  }
    }
}