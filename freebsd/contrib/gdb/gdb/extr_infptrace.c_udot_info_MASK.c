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
typedef  int /*<<< orphan*/  udot_val ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 long KERNEL_U_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_READ_U ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 char* FUNC3 (long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  target_has_execution ; 

__attribute__((used)) static void
FUNC8 (char *dummy1, int dummy2)
{
#if defined (KERNEL_U_SIZE)
  long udot_off;			/* Offset into user struct */
  int udot_val;			/* Value from user struct at udot_off */
  char mess[128];		/* For messages */
#endif

  if (!target_has_execution)
    {
      FUNC1 ("The program is not being run.");
    }

#if !defined (KERNEL_U_SIZE)

  /* Adding support for this command is easy.  Typically you just add a
     routine, called "kernel_u_size" that returns the size of the user
     struct, to the appropriate *-nat.c file and then add to the native
     config file "#define KERNEL_U_SIZE kernel_u_size()" */
  FUNC1 ("Don't know how large ``struct user'' is in this version of gdb.");

#else

  for (udot_off = 0; udot_off < KERNEL_U_SIZE; udot_off += sizeof (udot_val))
    {
      if ((udot_off % 24) == 0)
	{
	  if (udot_off > 0)
	    {
	      printf_filtered ("\n");
	    }
	  printf_filtered ("%s:", paddr (udot_off));
	}
      udot_val = ptrace (PT_READ_U, PIDGET (inferior_ptid), (PTRACE_ARG3_TYPE) udot_off, 0);
      if (errno != 0)
	{
	  sprintf (mess, "\nreading user struct at offset 0x%s",
		   paddr_nz (udot_off));
	  perror_with_name (mess);
	}
      /* Avoid using nonportable (?) "*" in print specs */
      printf_filtered (sizeof (int) == 4 ? " 0x%08x" : " 0x%16x", udot_val);
    }
  printf_filtered ("\n");

#endif
}