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
 scalar_t__ DImode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_MOVE_BYTES ; 
 int /*<<< orphan*/  OPTAB_WIDEN ; 
 int /*<<< orphan*/  PLUS ; 
 scalar_t__ Pmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC13 (rtx dest, rtx src, HOST_WIDE_INT length)
{
  rtx label, src_reg, dest_reg, final_src;
  HOST_WIDE_INT leftover;

  leftover = length % MAX_MOVE_BYTES;
  length -= leftover;

  /* Create registers and memory references for use within the loop.  */
  FUNC10 (src, MAX_MOVE_BYTES, &src_reg, &src);
  FUNC10 (dest, MAX_MOVE_BYTES, &dest_reg, &dest);

  /* Calculate the value that SRC_REG should have after the last iteration
     of the loop.  */
  final_src = FUNC5 (Pmode, PLUS, src_reg, FUNC0 (length),
				   0, 0, OPTAB_WIDEN);

  /* Emit the start of the loop.  */
  label = FUNC9 ();
  FUNC3 (label);

  /* Emit the loop body.  */
  FUNC11 (dest, src, MAX_MOVE_BYTES);

  /* Move on to the next block.  */
  FUNC4 (src_reg, FUNC12 (src_reg, MAX_MOVE_BYTES));
  FUNC4 (dest_reg, FUNC12 (dest_reg, MAX_MOVE_BYTES));

  /* Emit the loop condition.  */
  if (Pmode == DImode)
    FUNC1 (FUNC7 (src_reg, final_src));
  else
    FUNC1 (FUNC8 (src_reg, final_src));
  FUNC2 (FUNC6 (label));

  /* Mop up any left-over bytes.  */
  if (leftover)
    FUNC11 (dest, src, leftover);
}