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
 scalar_t__ Pmode ; 
 scalar_t__ SImode ; 
 int /*<<< orphan*/  SYMBOL_GOTOFF_CALL ; 
 scalar_t__ TARGET_EXPLICIT_RELOCS ; 
 scalar_t__ TARGET_NEWABI ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pic_offset_table_rtx ; 

__attribute__((used)) static void
FUNC7 (rtx dest, rtx addr, int sibcall_p)
{
  /* If we're generating PIC, and this call is to a global function,
     try to allow its address to be resolved lazily.  This isn't
     possible for NewABI sibcalls since the value of $gp on entry
     to the stub would be our caller's gp, not ours.  */
  if (TARGET_EXPLICIT_RELOCS
      && !(sibcall_p && TARGET_NEWABI)
      && FUNC4 (addr, VOIDmode))
    {
      rtx high, lo_sum_symbol;

      high = FUNC6 (dest, pic_offset_table_rtx,
				      addr, SYMBOL_GOTOFF_CALL);
      lo_sum_symbol = FUNC5 (addr, SYMBOL_GOTOFF_CALL);
      if (Pmode == SImode)
	FUNC0 (FUNC3 (dest, high, lo_sum_symbol));
      else
	FUNC0 (FUNC2 (dest, high, lo_sum_symbol));
    }
  else
    FUNC1 (dest, addr);
}