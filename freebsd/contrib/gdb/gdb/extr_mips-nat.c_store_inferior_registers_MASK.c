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
struct TYPE_2__ {int badvaddr; int cause; int fp_implementation_revision; } ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 int DEPRECATED_FP_REGNUM ; 
 int FIRST_EMBED_REGNUM ; 
 int LAST_EMBED_REGNUM ; 
 int NUM_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PS_REGNUM ; 
 int /*<<< orphan*/  PT_WRITE_U ; 
 int ZERO_REGNUM ; 
 int /*<<< orphan*/  current_gdbarch ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  inferior_ptid ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

void
FUNC7 (int regno)
{
  unsigned int regaddr;
  char buf[80];

  if (regno > 0)
    {
      if (regno == ZERO_REGNUM || regno == PS_REGNUM
	  || regno == FUNC1 (current_gdbarch)->badvaddr
	  || regno == FUNC1 (current_gdbarch)->cause
	  || regno == FUNC1 (current_gdbarch)->fp_implementation_revision
	  || regno == DEPRECATED_FP_REGNUM
	  || (regno >= FIRST_EMBED_REGNUM && regno <= LAST_EMBED_REGNUM))
	return;
      regaddr = FUNC5 (regno);
      errno = 0;
      FUNC3 (PT_WRITE_U, FUNC0 (inferior_ptid), (PTRACE_ARG3_TYPE) regaddr,
	      FUNC4 (regno));
      if (errno != 0)
	{
	  FUNC6 (buf, "writing register number %d", regno);
	  FUNC2 (buf);
	}
    }
  else
    {
      for (regno = 0; regno < NUM_REGS; regno++)
	FUNC7 (regno);
    }
}