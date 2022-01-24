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
 int FIRST_MMX_REG ; 
 int FIRST_SSE_REG ; 
 scalar_t__ FUNC0 (int) ; 
 int MMX_REGPARM_MAX ; 
 int REGPARM_MAX ; 
 scalar_t__ FUNC1 (int) ; 
 int SSE_REGPARM_MAX ; 
 int /*<<< orphan*/  TARGET_64BIT ; 
 scalar_t__ TARGET_MACHO ; 
 scalar_t__ TARGET_MMX ; 
 scalar_t__ TARGET_SSE ; 
 int /*<<< orphan*/ * fixed_regs ; 
 int* x86_64_int_parameter_registers ; 

bool
FUNC2 (int regno)
{
  int i;
  if (!TARGET_64BIT)
    {
      if (TARGET_MACHO)
        return (regno < REGPARM_MAX
                || (TARGET_SSE && FUNC1 (regno) && !fixed_regs[regno]));
      else
        return (regno < REGPARM_MAX
	        || (TARGET_MMX && FUNC0 (regno)
	  	    && (regno < FIRST_MMX_REG + MMX_REGPARM_MAX))
	        || (TARGET_SSE && FUNC1 (regno)
		    && (regno < FIRST_SSE_REG + SSE_REGPARM_MAX)));
    }

  if (TARGET_MACHO)
    {
      if (FUNC1 (regno) && TARGET_SSE)
        return true;
    }
  else
    {
      if (TARGET_SSE && FUNC1 (regno)
          && (regno < FIRST_SSE_REG + SSE_REGPARM_MAX))
        return true;
    }
  /* RAX is used as hidden argument to va_arg functions.  */
  if (!regno)
    return true;
  for (i = 0; i < REGPARM_MAX; i++)
    if (regno == x86_64_int_parameter_registers[i])
      return true;
  return false;
}