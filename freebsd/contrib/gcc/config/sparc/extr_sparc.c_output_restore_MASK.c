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
typedef  scalar_t__ rtx ;

/* Variables and functions */
#define  ASHIFT 130 
 int FUNC0 (scalar_t__) ; 
#define  LO_SUM 129 
#define  PLUS 128 
 int SET ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  asm_out_file ; 
 scalar_t__ const1_rtx ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__*) ; 

__attribute__((used)) static void
FUNC7 (rtx pat)
{
  rtx operands[3];

  if (! pat)
    {
      FUNC4 ("\t restore\n", asm_out_file);
      return;
    }

  FUNC5 (FUNC0 (pat) == SET);

  operands[0] = FUNC1 (pat);
  pat = FUNC2 (pat);

  switch (FUNC0 (pat))
    {
      case PLUS:
	operands[1] = FUNC3 (pat, 0);
	operands[2] = FUNC3 (pat, 1);
	FUNC6 (" restore %r1, %2, %Y0", operands);
	break;
      case LO_SUM:
	operands[1] = FUNC3 (pat, 0);
	operands[2] = FUNC3 (pat, 1);
	FUNC6 (" restore %r1, %%lo(%a2), %Y0", operands);
	break;
      case ASHIFT:
	operands[1] = FUNC3 (pat, 0);
	FUNC5 (FUNC3 (pat, 1) == const1_rtx);
	FUNC6 (" restore %r1, %r1, %Y0", operands);
	break;
      default:
	operands[1] = pat;
	FUNC6 (" restore %%g0, %1, %Y0", operands);
	break;
    }
}