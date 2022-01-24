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
 int LEGACY_SIM_REGNO_IGNORE ; 
 int NUM_REGS ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2 (int regnum)
{
  /* Only makes sense to supply raw registers.  */
  FUNC1 (regnum >= 0 && regnum < NUM_REGS);
  /* FIXME: cagney/2002-05-13: Need to look at the pseudo register to
     decide if it is valid.  Should instead define a standard sim/gdb
     register numbering scheme.  */
  if (FUNC0 (NUM_REGS + regnum) != NULL
      && FUNC0 (NUM_REGS + regnum)[0] != '\0')
    return regnum;
  else
    return LEGACY_SIM_REGNO_IGNORE;
}