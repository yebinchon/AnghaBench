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
 int NTO_REG_FLOAT ; 
 int NTO_REG_GENERAL ; 
 int NUM_GPREGS ; 
 int X86_CPU_FXSR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int nto_cpuinfo_flags ; 
 scalar_t__ nto_cpuinfo_valid ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static int
FUNC4 (int regset, char *data)
{
  if (regset == NTO_REG_GENERAL)
    {
      int regno;

      for (regno = 0; regno < NUM_GPREGS; regno++)
	{
	  int offset = FUNC2 (regno);
	  if (offset != -1)
	    FUNC3 (regno, data + offset);
	}
    }
  else if (regset == NTO_REG_FLOAT)
    {
      if (nto_cpuinfo_valid && nto_cpuinfo_flags | X86_CPU_FXSR)
	FUNC1 (data, -1);
      else
	FUNC0 (data, -1);
    }
  else
    return -1;

  return 0;
}