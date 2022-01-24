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
 int /*<<< orphan*/  EQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  SImode ; 
 scalar_t__ TARGET_32BIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hard_frame_pointer_rtx ; 

void
FUNC12 (void)
{
  rtx mem;
  rtx stack_top = FUNC8 (Pmode);
  rtx opcode_addr = FUNC8 (Pmode);
  rtx opcode = FUNC8 (SImode);
  rtx tocompare = FUNC8 (SImode);
  rtx no_toc_save_needed = FUNC7 ();

  mem = FUNC5 (Pmode, hard_frame_pointer_rtx);
  FUNC4 (stack_top, mem);

  mem = FUNC5 (Pmode,
		       FUNC10 (Pmode, stack_top,
				     FUNC0 (2 * FUNC1 (Pmode))));
  FUNC4 (opcode_addr, mem);
  FUNC4 (opcode, FUNC9 (SImode, opcode_addr));
  FUNC4 (tocompare, FUNC6 (TARGET_32BIT ? 0x80410014
					   : 0xE8410028, SImode));

  FUNC2 (opcode, tocompare, EQ, 1,
			   SImode, NULL_RTX, NULL_RTX,
			   no_toc_save_needed);

  mem = FUNC5 (Pmode,
		       FUNC10 (Pmode, stack_top,
				     FUNC0 (5 * FUNC1 (Pmode))));
  FUNC4 (mem, FUNC11 (Pmode, 2));
  FUNC3 (no_toc_save_needed);
}