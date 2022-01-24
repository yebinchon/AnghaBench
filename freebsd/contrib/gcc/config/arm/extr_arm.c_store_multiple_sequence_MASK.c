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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLUS ; 
 scalar_t__ REG ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int
FUNC8 (rtx *operands, int nops, int *regs, int *base,
			 HOST_WIDE_INT * load_offset)
{
  int unsorted_regs[4];
  HOST_WIDE_INT unsorted_offsets[4];
  int order[4];
  int base_reg = -1;
  int i;

  /* Can only handle 2, 3, or 4 insns at present, though could be easily
     extended if required.  */
  FUNC7 (nops >= 2 && nops <= 4);

  /* Loop over the operands and check that the memory references are
     suitable (i.e. immediate offsets from the same base register).  At
     the same time, extract the target register, and the memory
     offsets.  */
  for (i = 0; i < nops; i++)
    {
      rtx reg;
      rtx offset;

      /* Convert a subreg of a mem into the mem itself.  */
      if (FUNC0 (operands[nops + i]) == SUBREG)
	operands[nops + i] = FUNC6 (operands + (nops + i));

      FUNC7 (FUNC0 (operands[nops + i]) == MEM);

      /* Don't reorder volatile memory references; it doesn't seem worth
	 looking for the case where the order is ok anyway.  */
      if (FUNC2 (operands[nops + i]))
	return 0;

      offset = const0_rtx;

      if ((FUNC0 (reg = FUNC5 (operands[nops + i], 0)) == REG
	   || (FUNC0 (reg) == SUBREG
	       && FUNC0 (reg = FUNC4 (reg)) == REG))
	  || (FUNC0 (FUNC5 (operands[nops + i], 0)) == PLUS
	      && ((FUNC0 (reg = FUNC5 (FUNC5 (operands[nops + i], 0), 0))
		   == REG)
		  || (FUNC0 (reg) == SUBREG
		      && FUNC0 (reg = FUNC4 (reg)) == REG))
	      && (FUNC0 (offset = FUNC5 (FUNC5 (operands[nops + i], 0), 1))
		  == CONST_INT)))
	{
	  if (i == 0)
	    {
	      base_reg = FUNC3 (reg);
	      unsorted_regs[0] = (FUNC0 (operands[i]) == REG
				  ? FUNC3 (operands[i])
				  : FUNC3 (FUNC4 (operands[i])));
	      order[0] = 0;
	    }
	  else
	    {
	      if (base_reg != (int) FUNC3 (reg))
		/* Not addressed from the same base register.  */
		return 0;

	      unsorted_regs[i] = (FUNC0 (operands[i]) == REG
				  ? FUNC3 (operands[i])
				  : FUNC3 (FUNC4 (operands[i])));
	      if (unsorted_regs[i] < unsorted_regs[order[0]])
		order[0] = i;
	    }

	  /* If it isn't an integer register, then we can't do this.  */
	  if (unsorted_regs[i] < 0 || unsorted_regs[i] > 14)
	    return 0;

	  unsorted_offsets[i] = FUNC1 (offset);
	}
      else
	/* Not a suitable memory address.  */
	return 0;
    }

  /* All the useful information has now been extracted from the
     operands into unsorted_regs and unsorted_offsets; additionally,
     order[0] has been set to the lowest numbered register in the
     list.  Sort the registers into order, and check that the memory
     offsets are ascending and adjacent.  */

  for (i = 1; i < nops; i++)
    {
      int j;

      order[i] = order[i - 1];
      for (j = 0; j < nops; j++)
	if (unsorted_regs[j] > unsorted_regs[order[i - 1]]
	    && (order[i] == order[i - 1]
		|| unsorted_regs[j] < unsorted_regs[order[i]]))
	  order[i] = j;

      /* Have we found a suitable register? if not, one must be used more
	 than once.  */
      if (order[i] == order[i - 1])
	return 0;

      /* Is the memory address adjacent and ascending? */
      if (unsorted_offsets[order[i]] != unsorted_offsets[order[i - 1]] + 4)
	return 0;
    }

  if (base)
    {
      *base = base_reg;

      for (i = 0; i < nops; i++)
	regs[i] = unsorted_regs[order[i]];

      *load_offset = unsorted_offsets[order[0]];
    }

  if (unsorted_offsets[order[0]] == 0)
    return 1; /* stmia */

  if (unsorted_offsets[order[0]] == 4)
    return 2; /* stmib */

  if (unsorted_offsets[order[nops - 1]] == 0)
    return 3; /* stmda */

  if (unsorted_offsets[order[nops - 1]] == -4)
    return 4; /* stmdb */

  return 0;
}