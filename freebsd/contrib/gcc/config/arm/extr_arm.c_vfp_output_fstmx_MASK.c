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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int FIRST_VFP_REGNUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 

const char *
FUNC8 (rtx * operands)
{
  char pattern[100];
  int p;
  int base;
  int i;

  FUNC6 (pattern, "fstmfdx\t%m0!, {%P1");
  p = FUNC7 (pattern);

  FUNC3 (FUNC0 (operands[1]) == REG);

  base = (FUNC1 (operands[1]) - FIRST_VFP_REGNUM) / 2;
  for (i = 1; i < FUNC2 (operands[2], 0); i++)
    {
      p += FUNC5 (&pattern[p], ", d%d", base + i);
    }
  FUNC6 (&pattern[p], "}");

  FUNC4 (pattern, operands);
  return "";
}