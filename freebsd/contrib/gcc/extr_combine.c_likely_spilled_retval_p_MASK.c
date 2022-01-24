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
struct likely_spilled_retval_info {unsigned int regno; unsigned int nregs; unsigned int mask; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 unsigned int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ USE ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int** hard_regno_nregs ; 
 int /*<<< orphan*/  likely_spilled_retval_1 ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct likely_spilled_retval_info*) ; 
 int /*<<< orphan*/  this_basic_block ; 

__attribute__((used)) static int
FUNC13 (rtx insn)
{
  rtx use = FUNC0 (this_basic_block);
  rtx reg, p;
  unsigned regno, nregs;
  /* We assume here that no machine mode needs more than
     32 hard registers when the value overlaps with a register
     for which FUNCTION_VALUE_REGNO_P is true.  */
  unsigned mask;
  struct likely_spilled_retval_info info;

  if (!FUNC5 (use) || FUNC3 (FUNC6 (use)) != USE || insn == use)
    return 0;
  reg = FUNC11 (FUNC6 (use), 0);
  if (!FUNC10 (reg) || !FUNC2 (FUNC8 (reg)))
    return 0;
  regno = FUNC8 (reg);
  nregs = hard_regno_nregs[regno][FUNC4 (reg)];
  if (nregs == 1)
    return 0;
  mask = (2U << (nregs - 1)) - 1;

  /* Disregard parts of the return value that are set later.  */
  info.regno = regno;
  info.nregs = nregs;
  info.mask = mask;
  for (p = FUNC7 (use); info.mask && p != insn; p = FUNC7 (p))
    FUNC12 (FUNC6 (insn), likely_spilled_retval_1, &info);
  mask = info.mask;

  /* Check if any of the (probably) live return value registers is
     likely spilled.  */
  nregs --;
  do
    {
      if ((mask & 1 << nregs)
	  && FUNC1 (FUNC9 (regno + nregs)))
	return 1;
    } while (nregs--);
  return 0;
}