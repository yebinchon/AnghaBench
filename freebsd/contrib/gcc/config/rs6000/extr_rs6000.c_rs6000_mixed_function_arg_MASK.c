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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int BLKmode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ GP_ARG_MIN_REG ; 
 int GP_ARG_NUM_REG ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int SImode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC6 (enum machine_mode mode, tree type, int align_words)
{
  int n_units;
  int i, k;
  rtx rvec[GP_ARG_NUM_REG + 1];

  if (align_words >= GP_ARG_NUM_REG)
    return NULL_RTX;

  n_units = FUNC5 (mode, type);

  /* Optimize the simple case where the arg fits in one gpr, except in
     the case of BLKmode due to assign_parms assuming that registers are
     BITS_PER_WORD wide.  */
  if (n_units == 0
      || (n_units == 1 && mode != BLKmode))
    return FUNC4 (mode, GP_ARG_MIN_REG + align_words);

  k = 0;
  if (align_words + n_units > GP_ARG_NUM_REG)
    /* Not all of the arg fits in gprs.  Say that it goes in memory too,
       using a magic NULL_RTX component.
       This is not strictly correct.  Only some of the arg belongs in
       memory, not all of it.  However, the normal scheme using
       function_arg_partial_nregs can result in unusual subregs, eg.
       (subreg:SI (reg:DF) 4), which are not handled well.  The code to
       store the whole arg to memory is often more efficient than code
       to store pieces, and we know that space is available in the right
       place for the whole arg.  */
    rvec[k++] = FUNC2 (VOIDmode, NULL_RTX, const0_rtx);

  i = 0;
  do
    {
      rtx r = FUNC4 (SImode, GP_ARG_MIN_REG + align_words);
      rtx off = FUNC0 (i++ * 4);
      rvec[k++] = FUNC2 (VOIDmode, r, off);
    }
  while (++align_words < GP_ARG_NUM_REG && --n_units != 0);

  return FUNC3 (mode, FUNC1 (k, rvec));
}