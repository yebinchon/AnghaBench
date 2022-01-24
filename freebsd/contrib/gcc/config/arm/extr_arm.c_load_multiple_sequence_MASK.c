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
 scalar_t__ arm_ld_sched ; 
 int /*<<< orphan*/  const0_rtx ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

int
FUNC9 (rtx *operands, int nops, int *regs, int *base,
			HOST_WIDE_INT *load_offset)
{
  int unsorted_regs[4];
  HOST_WIDE_INT unsorted_offsets[4];
  int order[4];
  int base_reg = -1;
  int i;

  /* Can only handle 2, 3, or 4 insns at present,
     though could be easily extended if required.  */
  FUNC8 (nops >= 2 && nops <= 4);

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

      FUNC8 (FUNC0 (operands[nops + i]) == MEM);

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

	  /* If it isn't an integer register, or if it overwrites the
	     base register but isn't the last insn in the list, then
	     we can't do this.  */
	  if (unsorted_regs[i] < 0 || unsorted_regs[i] > 14
	      || (i != nops - 1 && unsorted_regs[i] == base_reg))
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
    return 1; /* ldmia */

  if (unsorted_offsets[order[0]] == 4)
    return 2; /* ldmib */

  if (unsorted_offsets[order[nops - 1]] == 0)
    return 3; /* ldmda */

  if (unsorted_offsets[order[nops - 1]] == -4)
    return 4; /* ldmdb */

  /* For ARM8,9 & StrongARM, 2 ldr instructions are faster than an ldm
     if the offset isn't small enough.  The reason 2 ldrs are faster
     is because these ARMs are able to do more than one cache access
     in a single cycle.  The ARM9 and StrongARM have Harvard caches,
     whilst the ARM8 has a double bandwidth cache.  This means that
     these cores can do both an instruction fetch and a data fetch in
     a single cycle, so the trick of calculating the address into a
     scratch register (one of the result regs) and then doing a load
     multiple actually becomes slower (and no smaller in code size).
     That is the transformation

 	ldr	rd1, [rbase + offset]
 	ldr	rd2, [rbase + offset + 4]

     to

 	add	rd1, rbase, offset
 	ldmia	rd1, {rd1, rd2}

     produces worse code -- '3 cycles + any stalls on rd2' instead of
     '2 cycles + any stalls on rd2'.  On ARMs with only one cache
     access per cycle, the first sequence could never complete in less
     than 6 cycles, whereas the ldm sequence would only take 5 and
     would make better use of sequential accesses if not hitting the
     cache.

     We cheat here and test 'arm_ld_sched' which we currently know to
     only be true for the ARM8, ARM9 and StrongARM.  If this ever
     changes, then the test below needs to be reworked.  */
  if (nops == 2 && arm_ld_sched)
    return 0;

  /* Can't do it without setting up the offset, only do this if it takes
     no more than one insn.  */
  return (FUNC7 (unsorted_offsets[order[0]])
	  || FUNC7 (-unsorted_offsets[order[0]])) ? 5 : 0;
}