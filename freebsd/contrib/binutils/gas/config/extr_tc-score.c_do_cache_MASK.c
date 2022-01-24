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
struct TYPE_2__ {int instruction; void* error; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 void* BAD_ARGS ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  _IMM5 ; 
 int /*<<< orphan*/  _SIMM15 ; 
 int FUNC2 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ inst ; 
 int FUNC5 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (char**) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC9 (char *str)
{
  FUNC7 (str);

  if ((FUNC2 (&str, 20, _IMM5) == (int) FAIL) || (FUNC6 (&str) == (int) FAIL))
    {
      return;
    }
  else
    {
      int cache_op;

      cache_op = (inst.instruction >> 20) & 0x1F;
      FUNC8 (inst.name, "cache %d", cache_op);
    }

  if (*str == '[')
    {
      str++;
      FUNC7 (str);

      if (FUNC5 (&str, 15, REG_TYPE_SCORE) == (int) FAIL)
	return;

      FUNC7 (str);

      /* cache op, [rA]  */
      if (FUNC6 (&str) == (int) FAIL)
        {
          FUNC0 (NULL);
          if (*str != ']')
            {
              inst.error = FUNC1("missing ]");
              return;
            }
          str++;
        }
      /* cache op, [rA, simm15]  */
      else
        {
          if (FUNC4 (&str, 0, _SIMM15) == (int) FAIL)
            {
              return;
            }

          FUNC7 (str);
          if (*str++ != ']')
            {
              inst.error = FUNC1("missing ]");
              return;
            }
        }

      if (FUNC3 (str) == (int) FAIL)
	return;
    }
  else
    {
      inst.error = BAD_ARGS;
    }
}