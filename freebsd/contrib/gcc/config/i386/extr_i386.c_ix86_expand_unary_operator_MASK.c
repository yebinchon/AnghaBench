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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int NOT ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int,scalar_t__) ; 
 scalar_t__ reload_in_progress ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 

void
FUNC13 (enum rtx_code code, enum machine_mode mode,
			    rtx operands[])
{
  int matching_memory;
  rtx src, dst, op, clob;

  dst = operands[0];
  src = operands[1];

  /* If the destination is memory, and we do not have matching source
     operands, do things in registers.  */
  matching_memory = 0;
  if (FUNC0 (dst))
    {
      if (FUNC12 (dst, src))
	matching_memory = 1;
      else
	dst = FUNC5 (mode);
    }

  /* When source operand is memory, destination must match.  */
  if (FUNC0 (src) && !matching_memory)
    src = FUNC3 (mode, src);

  /* Emit the instruction.  */

  op = FUNC10 (VOIDmode, dst, FUNC11 (code, mode, src));
  if (reload_in_progress || code == NOT)
    {
      /* Reload doesn't know about the flags register, and doesn't know that
         it doesn't want to clobber it.  */
      FUNC4 (code == NOT);
      FUNC1 (op);
    }
  else
    {
      clob = FUNC7 (VOIDmode, FUNC9 (CCmode, FLAGS_REG));
      FUNC1 (FUNC8 (VOIDmode, FUNC6 (2, op, clob)));
    }

  /* Fix up the destination if needed.  */
  if (dst != operands[0])
    FUNC2 (operands[0], dst);
}