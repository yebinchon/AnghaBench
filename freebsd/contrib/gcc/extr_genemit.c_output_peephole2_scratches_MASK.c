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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MATCH_DUP ; 
 scalar_t__ MATCH_SCRATCH ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void
FUNC8 (rtx split)
{
  int i;
  int insn_nr = 0;

  FUNC7 ("  HARD_REG_SET _regs_allocated;\n");
  FUNC7 ("  CLEAR_HARD_REG_SET (_regs_allocated);\n");

  for (i = 0; i < FUNC6 (split, 0); i++)
    {
      rtx elt = FUNC5 (split, 0, i);
      if (FUNC0 (elt) == MATCH_SCRATCH)
	{
	  int last_insn_nr = insn_nr;
	  int cur_insn_nr = insn_nr;
	  int j;
	  for (j = i + 1; j < FUNC6 (split, 0); j++)
	    if (FUNC0 (FUNC5 (split, 0, j)) == MATCH_DUP)
	      {
		if (FUNC3 (FUNC5 (split, 0, j), 0) == FUNC3 (elt, 0))
		  last_insn_nr = cur_insn_nr;
	      }
	    else if (FUNC0 (FUNC5 (split, 0, j)) != MATCH_SCRATCH)
	      cur_insn_nr++;

	  FUNC7 ("  if ((operands[%d] = peep2_find_free_register (%d, %d, \"%s\", %smode, &_regs_allocated)) == NULL_RTX)\n\
    return NULL;\n",
		  FUNC3 (elt, 0),
		  insn_nr, last_insn_nr,
		  FUNC4 (elt, 1),
		  FUNC2 (FUNC1 (elt)));

	}
      else if (FUNC0 (elt) != MATCH_DUP)
	insn_nr++;
    }
}