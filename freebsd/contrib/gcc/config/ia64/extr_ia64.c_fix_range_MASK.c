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
 scalar_t__ FUNC0 (int) ; 
 int* call_used_regs ; 
 int FUNC1 (char*) ; 
 int* fixed_regs ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC6 (const char *const_str)
{
  int i, first, last;
  char *str, *dash, *comma;

  /* str must be of the form REG1'-'REG2{,REG1'-'REG} where REG1 and
     REG2 are either register names or register numbers.  The effect
     of this option is to mark the registers in the range from REG1 to
     REG2 as ``fixed'' so they won't be used by the compiler.  This is
     used, e.g., to ensure that kernel mode code doesn't use f32-f127.  */

  i = FUNC4 (const_str);
  str = (char *) FUNC0 (i + 1);
  FUNC2 (str, const_str, i + 1);

  while (1)
    {
      dash = FUNC3 (str, '-');
      if (!dash)
	{
	  FUNC5 (0, "value of -mfixed-range must have form REG1-REG2");
	  return;
	}
      *dash = '\0';

      comma = FUNC3 (dash + 1, ',');
      if (comma)
	*comma = '\0';

      first = FUNC1 (str);
      if (first < 0)
	{
	  FUNC5 (0, "unknown register name: %s", str);
	  return;
	}

      last = FUNC1 (dash + 1);
      if (last < 0)
	{
	  FUNC5 (0, "unknown register name: %s", dash + 1);
	  return;
	}

      *dash = '-';

      if (first > last)
	{
	  FUNC5 (0, "%s-%s is an empty range", str, dash + 1);
	  return;
	}

      for (i = first; i <= last; ++i)
	fixed_regs[i] = call_used_regs[i] = 1;

      if (!comma)
	break;

      *comma = ',';
      str = comma + 1;
    }
}