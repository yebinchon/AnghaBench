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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int SPARC_STACK_BIAS ; 
 int UNITS_PER_WORD ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 
 int /*<<< orphan*/  word_mode ; 

__attribute__((used)) static void
FUNC9 (rtx seq, rtx reg, rtx reg2)
{
  /* We must preserve the lowest 16 words for the register save area.  */
  HOST_WIDE_INT offset = 16*UNITS_PER_WORD;
  /* We really need only 2 words of fresh stack space.  */
  HOST_WIDE_INT size = FUNC1 (offset + 2*UNITS_PER_WORD);

  rtx slot
    = FUNC4 (word_mode, FUNC8 (stack_pointer_rtx,
					     SPARC_STACK_BIAS + offset));

  FUNC3 (FUNC6 (FUNC0 (size)));
  FUNC3 (FUNC5 (VOIDmode, slot, reg));
  if (reg2)
    FUNC3 (FUNC5 (VOIDmode,
			    FUNC2 (slot, word_mode, UNITS_PER_WORD),
			    reg2));
  FUNC3 (seq);
  if (reg2)
    FUNC3 (FUNC5 (VOIDmode,
			    reg2,
			    FUNC2 (slot, word_mode, UNITS_PER_WORD)));
  FUNC3 (FUNC5 (VOIDmode, reg, slot));
  FUNC3 (FUNC7 (FUNC0 (size)));
}