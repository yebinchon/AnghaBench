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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HImode ; 
#define  I387_CW_CEIL 131 
#define  I387_CW_FLOOR 130 
#define  I387_CW_MASK_PM 129 
#define  I387_CW_TRUNC 128 
 int MAX_386_STACK_LOCALS ; 
 int SLOT_CW_CEIL ; 
 int SLOT_CW_FLOOR ; 
 int SLOT_CW_MASK_PM ; 
 int SLOT_CW_STORED ; 
 int SLOT_CW_TRUNC ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ TARGET_PARTIAL_REG_STALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ optimize_size ; 

void
FUNC11 (int mode)
{
  rtx stored_mode = FUNC1 (HImode, SLOT_CW_STORED);
  rtx new_mode;

  int slot;

  rtx reg = FUNC9 (HImode);

  FUNC2 (FUNC10 (stored_mode));
  FUNC3 (reg, stored_mode);

  if (TARGET_64BIT || TARGET_PARTIAL_REG_STALL || optimize_size)
    {
      switch (mode)
	{
	case I387_CW_TRUNC:
	  /* round toward zero (truncate) */
	  FUNC2 (FUNC7 (reg, reg, FUNC0 (0x0c00)));
	  slot = SLOT_CW_TRUNC;
	  break;

	case I387_CW_FLOOR:
	  /* round down toward -oo */
	  FUNC2 (FUNC6 (reg, reg, FUNC0 (~0x0c00)));
	  FUNC2 (FUNC7 (reg, reg, FUNC0 (0x0400)));
	  slot = SLOT_CW_FLOOR;
	  break;

	case I387_CW_CEIL:
	  /* round up toward +oo */
	  FUNC2 (FUNC6 (reg, reg, FUNC0 (~0x0c00)));
	  FUNC2 (FUNC7 (reg, reg, FUNC0 (0x0800)));
	  slot = SLOT_CW_CEIL;
	  break;

	case I387_CW_MASK_PM:
	  /* mask precision exception for nearbyint() */
	  FUNC2 (FUNC7 (reg, reg, FUNC0 (0x0020)));
	  slot = SLOT_CW_MASK_PM;
	  break;

	default:
	  FUNC5 ();
	}
    }
  else
    {
      switch (mode)
	{
	case I387_CW_TRUNC:
	  /* round toward zero (truncate) */
	  FUNC2 (FUNC8 (reg, FUNC0 (0xc)));
	  slot = SLOT_CW_TRUNC;
	  break;

	case I387_CW_FLOOR:
	  /* round down toward -oo */
	  FUNC2 (FUNC8 (reg, FUNC0 (0x4)));
	  slot = SLOT_CW_FLOOR;
	  break;

	case I387_CW_CEIL:
	  /* round up toward +oo */
	  FUNC2 (FUNC8 (reg, FUNC0 (0x8)));
	  slot = SLOT_CW_CEIL;
	  break;

	case I387_CW_MASK_PM:
	  /* mask precision exception for nearbyint() */
	  FUNC2 (FUNC7 (reg, reg, FUNC0 (0x0020)));
	  slot = SLOT_CW_MASK_PM;
	  break;

	default:
	  FUNC5 ();
	}
    }

  FUNC4 (slot < MAX_386_STACK_LOCALS);

  new_mode = FUNC1 (HImode, slot);
  FUNC3 (new_mode, reg);
}