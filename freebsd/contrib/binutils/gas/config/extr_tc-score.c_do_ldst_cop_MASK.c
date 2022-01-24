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
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAD_ARGS ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int /*<<< orphan*/  REG_TYPE_SCORE_CR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _IMM10_RSHIFT_2 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char**,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ inst ; 
 int FUNC3 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (char *str)
{
  FUNC5 (str);

  if ((FUNC3 (&str, 15, REG_TYPE_SCORE_CR) == (int) FAIL)
      || (FUNC4 (&str) == (int) FAIL))
    return;

  if (*str == '[')
    {
      str++;
      FUNC5 (str);

      if (FUNC3 (&str, 20, REG_TYPE_SCORE) == (int) FAIL)
	return;

      FUNC5 (str);

      if (*str++ != ']')
        {
          if (FUNC2 (&str, 5, _IMM10_RSHIFT_2) == (int) FAIL)
	    return;

          FUNC5 (str);
          if (*str++ != ']')
            {
              inst.error = FUNC0("missing ]");
              return;
            }
        }

      FUNC1 (str);
    }
  else
    inst.error = BAD_ARGS;
}