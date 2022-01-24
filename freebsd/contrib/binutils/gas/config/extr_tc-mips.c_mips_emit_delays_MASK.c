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
struct TYPE_2__ {int /*<<< orphan*/  noreorder; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOP_INSN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  history ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ mips_opts ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC4 (void)
{
  if (! mips_opts.noreorder)
    {
      int nops = FUNC3 (history, NULL);
      if (nops > 0)
	{
	  while (nops-- > 0)
	    FUNC0 (NOP_INSN);
	  FUNC1 ();
	}
    }
  FUNC2 ();
}