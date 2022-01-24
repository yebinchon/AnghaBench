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
 int /*<<< orphan*/  ERR_FOR_SCORE5U_ATOMIC ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ inst ; 
 int FUNC2 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int university_version ; 

__attribute__((used)) static void
FUNC5 (char *str)
{
  if (university_version == 1)
    {
      inst.error = ERR_FOR_SCORE5U_ATOMIC;
      return;
    }

  FUNC4 (str);

  if ((FUNC2 (&str, 20, REG_TYPE_SCORE) == (int) FAIL)
      || (FUNC3 (&str) == (int) FAIL))
    {
      return;
    }
  else
    {

      FUNC4 (str);
      if (*str++ == '[')
        {
          int reg;

          FUNC4 (str);
          if ((reg = FUNC2 (&str, 15, REG_TYPE_SCORE)) == (int) FAIL)
            {
              return;
            }

          FUNC4 (str);
          if (*str++ != ']')
            {
              inst.error = FUNC0("missing ]");
              return;
            }

          FUNC1 (str);
        }
      else
	inst.error = BAD_ARGS;
    }
}