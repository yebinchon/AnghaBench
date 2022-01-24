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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ TARGET_MIPS16 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC7 (rtx temp, rtx reg, HOST_WIDE_INT offset)
{
  if (!FUNC3 (offset))
    {
      rtx high;
      if (TARGET_MIPS16)
	{
	  /* Load the full offset into a register so that we can use
	     an unextended instruction for the address itself.  */
	  high = FUNC2 (offset);
	  offset = 0;
	}
      else
	{
	  /* Leave OFFSET as a 16-bit offset and put the excess in HIGH.  */
	  high = FUNC2 (FUNC0 (offset));
	  offset = FUNC1 (offset);
	}
      high = FUNC5 (temp, high);
      reg = FUNC5 (temp, FUNC4 (Pmode, high, reg));
    }
  return FUNC6 (reg, offset);
}