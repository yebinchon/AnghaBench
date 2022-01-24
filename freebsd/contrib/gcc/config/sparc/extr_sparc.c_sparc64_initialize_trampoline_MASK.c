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
 int /*<<< orphan*/  DImode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCT_NORMAL ; 
 scalar_t__ PROCESSOR_NIAGARA ; 
 scalar_t__ PROCESSOR_ULTRASPARC ; 
 scalar_t__ PROCESSOR_ULTRASPARC3 ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ sparc_cpu ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10 (rtx tramp, rtx fnaddr, rtx cxt)
{
  /* SPARC 64-bit trampoline:

	rd	%pc, %g1
	ldx	[%g1+24], %g5
	jmp	%g5
	ldx	[%g1+16], %g5
	+16 bytes data
   */

  FUNC3 (FUNC5 (SImode, tramp),
		  FUNC0 (FUNC8 (0x83414000, SImode)));
  FUNC3 (FUNC5 (SImode, FUNC7 (tramp, 4)),
		  FUNC0 (FUNC8 (0xca586018, SImode)));
  FUNC3 (FUNC5 (SImode, FUNC7 (tramp, 8)),
		  FUNC0 (FUNC8 (0x81c14000, SImode)));
  FUNC3 (FUNC5 (SImode, FUNC7 (tramp, 12)),
		  FUNC0 (FUNC8 (0xca586010, SImode)));
  FUNC3 (FUNC5 (DImode, FUNC7 (tramp, 16)), cxt);
  FUNC3 (FUNC5 (DImode, FUNC7 (tramp, 24)), fnaddr);
  FUNC1 (FUNC4 (FUNC9 (FUNC5 (DImode, tramp))));

  if (sparc_cpu != PROCESSOR_ULTRASPARC
      && sparc_cpu != PROCESSOR_ULTRASPARC3
      && sparc_cpu != PROCESSOR_NIAGARA)
    FUNC1 (FUNC4 (FUNC9 (FUNC5 (DImode, FUNC7 (tramp, 8)))));

  /* Call __enable_execute_stack after writing onto the stack to make sure
     the stack address is accessible.  */
#ifdef ENABLE_EXECUTE_STACK
  emit_library_call (gen_rtx_SYMBOL_REF (Pmode, "__enable_execute_stack"),
                     LCT_NORMAL, VOIDmode, 1, tramp, Pmode);
#endif
}