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

/* Variables and functions */
 char* FUNC0 (char) ; 
 int stack_dir ; 

__attribute__((used)) static void
FUNC1 (void)
{
  static char *addr = NULL;	/* Address of first `dummy', once known.  */
  auto char dummy;		/* To get stack address.  */

  if (addr == NULL)
    {				/* Initial entry.  */
      addr = FUNC0 (dummy);

      FUNC1 ();	/* Recurse once.  */
    }
  else
    {
      /* Second entry.  */
      if (FUNC0 (dummy) > addr)
	stack_dir = 1;		/* Stack grew upward.  */
      else
	stack_dir = -1;		/* Stack grew downward.  */
    }
}