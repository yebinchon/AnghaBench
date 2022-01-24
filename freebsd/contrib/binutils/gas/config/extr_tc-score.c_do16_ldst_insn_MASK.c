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
struct TYPE_2__ {int relax_inst; int instruction; int relax_size; int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAD_ARGS ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 TYPE_1__ inst ; 
 int FUNC2 (char**,int) ; 
 int FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (char *str)
{
  FUNC4 (str);

  if ((FUNC2 (&str, 8) == (int) FAIL) || (FUNC3 (&str) == (int) FAIL))
    return;

  if (*str == '[')
    {
      int reg;

      str++;
      FUNC4 (str);

      if ((reg = FUNC2 (&str, 4)) == (int) FAIL)
	return;

      FUNC4 (str);
      if (*str++ == ']')
        {
          if (FUNC1 (str) == (int) FAIL)
	    return;
          else
            {
              inst.relax_inst |= (((inst.instruction >> 8) & 0xf) << 20)
                              | (((inst.instruction >> 4) & 0xf) << 15);
	      inst.relax_size = 4;
            }
        }
      else
        {
          inst.error = FUNC0("missing ]");
        }
    }
  else
    {
      inst.error = BAD_ARGS;
    }
}