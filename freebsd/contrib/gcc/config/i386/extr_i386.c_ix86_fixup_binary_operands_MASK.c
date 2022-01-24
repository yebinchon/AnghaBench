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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ MEM ; 
 scalar_t__ RTX_COMM_ARITH ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

rtx
FUNC7 (enum rtx_code code, enum machine_mode mode,
			    rtx operands[])
{
  int matching_memory;
  rtx src1, src2, dst;

  dst = operands[0];
  src1 = operands[1];
  src2 = operands[2];

  /* Recognize <var1> = <value> <op> <var1> for commutative operators */
  if (FUNC2 (code) == RTX_COMM_ARITH
      && (FUNC6 (dst, src2)
	  || FUNC5 (src1, mode)))
    {
      rtx temp = src1;
      src1 = src2;
      src2 = temp;
    }

  /* If the destination is memory, and we do not have matching source
     operands, do things in registers.  */
  matching_memory = 0;
  if (FUNC1 (dst) == MEM)
    {
      if (FUNC6 (dst, src1))
	matching_memory = 1;
      else if (FUNC2 (code) == RTX_COMM_ARITH
	       && FUNC6 (dst, src2))
	matching_memory = 2;
      else
	dst = FUNC4 (mode);
    }

  /* Both source operands cannot be in memory.  */
  if (FUNC1 (src1) == MEM && FUNC1 (src2) == MEM)
    {
      if (matching_memory != 2)
	src2 = FUNC3 (mode, src2);
      else
	src1 = FUNC3 (mode, src1);
    }

  /* If the operation is not commutable, source 1 cannot be a constant
     or non-matching memory.  */
  if ((FUNC0 (src1)
       || (!matching_memory && FUNC1 (src1) == MEM))
      && FUNC2 (code) != RTX_COMM_ARITH)
    src1 = FUNC3 (mode, src1);

  src1 = operands[1] = src1;
  src2 = operands[2] = src2;
  return dst;
}