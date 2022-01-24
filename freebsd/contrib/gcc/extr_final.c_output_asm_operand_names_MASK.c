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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 char* ASM_COMMENT_START ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC6 (rtx *operands, int *oporder, int nops)
{
  int wrote = 0;
  int i;

  for (i = 0; i < nops; i++)
    {
      int addressp;
      rtx op = operands[oporder[i]];
      tree expr = FUNC4 (op, &addressp);

      FUNC3 (asm_out_file, "%c%s",
	       wrote ? ',' : '\t', wrote ? "" : ASM_COMMENT_START);
      wrote = 1;
      if (expr)
	{
	  FUNC3 (asm_out_file, "%s",
		   addressp ? "*" : "");
	  FUNC5 (asm_out_file, expr);
	  wrote = 1;
	}
      else if (FUNC2 (op) && FUNC0 (op)
	       && FUNC0 (op) != FUNC1 (op))
	FUNC3 (asm_out_file, " tmp%i", FUNC0 (op));
    }
}