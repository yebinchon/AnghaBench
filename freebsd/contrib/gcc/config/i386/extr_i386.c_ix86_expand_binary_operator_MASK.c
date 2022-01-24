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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  CCmode ; 
 int /*<<< orphan*/  FLAGS_REG ; 
 int PLUS ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int,int,scalar_t__*) ; 
 scalar_t__ reload_in_progress ; 

void
FUNC10 (enum rtx_code code, enum machine_mode mode,
			     rtx operands[])
{
  rtx src1, src2, dst, op, clob;

  dst = FUNC9 (code, mode, operands);
  src1 = operands[1];
  src2 = operands[2];

 /* Emit the instruction.  */

  op = FUNC7 (VOIDmode, dst, FUNC8 (code, mode, src1, src2));
  if (reload_in_progress)
    {
      /* Reload doesn't know about the flags register, and doesn't know that
         it doesn't want to clobber it.  We can only do this with PLUS.  */
      FUNC2 (code == PLUS);
      FUNC0 (op);
    }
  else
    {
      clob = FUNC4 (VOIDmode, FUNC6 (CCmode, FLAGS_REG));
      FUNC0 (FUNC5 (VOIDmode, FUNC3 (2, op, clob)));
    }

  /* Fix up the destination if needed.  */
  if (dst != operands[0])
    FUNC1 (operands[0], dst);
}