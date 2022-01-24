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
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 int DEPRECATED_FP_REGNUM ; 
 int FUNC0 (int) ; 
 int MAX_REGISTER_SIZE ; 
 int NUM_REGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_READ_U ; 
 int ZERO_REGNUM ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 

void
FUNC7 (int regno)
{
  unsigned int regaddr;
  char buf[MAX_REGISTER_SIZE];
  int i;
  char zerobuf[MAX_REGISTER_SIZE];
  FUNC3 (zerobuf, 0, MAX_REGISTER_SIZE);

  FUNC2 ();

  for (regno = 1; regno < NUM_REGS; regno++)
    {
      regaddr = FUNC5 (regno);
      for (i = 0; i < FUNC0 (regno); i += sizeof (int))
	{
	  *(int *) &buf[i] = FUNC4 (PT_READ_U, FUNC1 (inferior_ptid),
				     (PTRACE_ARG3_TYPE) regaddr, 0);
	  regaddr += sizeof (int);
	}
      FUNC6 (regno, buf);
    }

  FUNC6 (ZERO_REGNUM, zerobuf);
  /* Frame ptr reg must appear to be 0; it is faked by stack handling code. */
  FUNC6 (DEPRECATED_FP_REGNUM, zerobuf);
}