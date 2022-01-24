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
struct TYPE_2__ {unsigned int instruction; void* error; } ;

/* Variables and functions */
 void* BAD_ARGS ; 
 void* ERR_FOR_SCORE5U_ATOMIC ; 
 scalar_t__ FAIL ; 
 unsigned int LDST_UNALIGN_MASK ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 unsigned int UA_LCE ; 
 unsigned int UA_LCW ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 int FUNC2 (char*) ; 
 TYPE_1__ inst ; 
 int FUNC3 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int university_version ; 

__attribute__((used)) static void
FUNC6 (char *str)
{
  int conflict_reg;

  if (university_version == 1)
    {
      inst.error = ERR_FOR_SCORE5U_ATOMIC;
      return;
    }

  FUNC5 (str);

  /* lcb/scb [rA]+.  */
  if (*str == '[')
    {
      str++;
      FUNC5 (str);

      if (FUNC3 (&str, 15, REG_TYPE_SCORE) == (int) FAIL)
	return;

      if (*str++ == ']')
        {
          if (*str++ != '+')
            {
              inst.error = FUNC0("missing +");
              return;
            }
        }
      else
        {
          inst.error = FUNC0("missing ]");
          return;
        }

      if (FUNC2 (str) == (int) FAIL)
	return;
    }
  /* lcw/lce/scb/sce rD, [rA]+.  */
  else
    {
      if (((conflict_reg = FUNC3 (&str, 20, REG_TYPE_SCORE)) == (int) FAIL)
          || (FUNC4 (&str) == (int) FAIL))
        {
          return;
        }

      FUNC5 (str);
      if (*str++ == '[')
        {
          int reg;

          FUNC5 (str);
          if ((reg = FUNC3 (&str, 15, REG_TYPE_SCORE)) == (int) FAIL)
            {
              return;
            }

          /* Conflicts can occur on stores as well as loads.  */
          conflict_reg = (conflict_reg == reg);
          FUNC5 (str);
          if (*str++ == ']')
            {
              unsigned int ldst_func = inst.instruction & LDST_UNALIGN_MASK;

              if (*str++ == '+')
                {
                  if (conflict_reg)
                    {
                      FUNC1 (FUNC0("%s register same as write-back base"),
                               ((ldst_func & UA_LCE) || (ldst_func & UA_LCW)
                                ? FUNC0("destination") : FUNC0("source")));
                    }
                }
              else
                {
                  inst.error = FUNC0("missing +");
                  return;
                }

              if (FUNC2 (str) == (int) FAIL)
		return;
            }
          else
            {
              inst.error = FUNC0("missing ]");
              return;
            }
        }
      else
        {
          inst.error = BAD_ARGS;
          return;
        }
    }
}