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
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  DImode ; 
 int FIRST_PSEUDO_REGISTER ; 
 int FIRST_REX_INT_REG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  SImode ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ UNITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (rtx pointer, HOST_WIDE_INT offset,
				  int maybe_eh_return)
{
  int regno;
  rtx base_address = FUNC5 (Pmode, pointer);

  for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
    if (FUNC7 (regno, maybe_eh_return))
      {
	/* Ensure that adjust_address won't be forced to produce pointer
	   out of range allowed by x86-64 instruction set.  */
	if (TARGET_64BIT && offset != FUNC8 (offset, SImode))
	  {
	    rtx r11;

	    r11 = FUNC6 (DImode, FIRST_REX_INT_REG + 3 /* R11 */);
	    FUNC3 (r11, FUNC0 (offset));
	    FUNC2 (FUNC4 (r11, r11, pointer));
	    base_address = FUNC5 (Pmode, r11);
	    offset = 0;
	  }
	FUNC3 (FUNC6 (Pmode, regno),
			FUNC1 (base_address, Pmode, offset));
	offset += UNITS_PER_WORD;
      }
}