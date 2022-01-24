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
 int /*<<< orphan*/  LCT_NORMAL ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
 scalar_t__ PROCESSOR_NIAGARA ; 
 scalar_t__ PROCESSOR_ULTRASPARC ; 
 scalar_t__ PROCESSOR_ULTRASPARC3 ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  RSHIFT_EXPR ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ior_optab ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ sparc_cpu ; 
 int FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void
FUNC14 (rtx tramp, rtx fnaddr, rtx cxt)
{
  /* SPARC 32-bit trampoline:

 	sethi	%hi(fn), %g1
 	sethi	%hi(static), %g2
 	jmp	%g1+%lo(fn)
 	or	%g2, %lo(static), %g2

    SETHI i,r  = 00rr rrr1 00ii iiii iiii iiii iiii iiii
    JMPL r+i,d = 10dd ddd1 1100 0rrr rr1i iiii iiii iiii
   */

  FUNC3
    (FUNC8 (SImode, FUNC10 (tramp, 0)),
     FUNC5 (SImode, ior_optab,
		   FUNC6 (RSHIFT_EXPR, SImode, fnaddr,
				 FUNC11 (10), 0, 1),
		   FUNC0 (FUNC12 (0x03000000, SImode)),
		   NULL_RTX, 1, OPTAB_DIRECT));

  FUNC3
    (FUNC8 (SImode, FUNC10 (tramp, 4)),
     FUNC5 (SImode, ior_optab,
		   FUNC6 (RSHIFT_EXPR, SImode, cxt,
				 FUNC11 (10), 0, 1),
		   FUNC0 (FUNC12 (0x05000000, SImode)),
		   NULL_RTX, 1, OPTAB_DIRECT));

  FUNC3
    (FUNC8 (SImode, FUNC10 (tramp, 8)),
     FUNC5 (SImode, ior_optab,
		   FUNC4 (SImode, fnaddr, FUNC0 (0x3ff), NULL_RTX),
		   FUNC0 (FUNC12 (0x81c06000, SImode)),
		   NULL_RTX, 1, OPTAB_DIRECT));

  FUNC3
    (FUNC8 (SImode, FUNC10 (tramp, 12)),
     FUNC5 (SImode, ior_optab,
		   FUNC4 (SImode, cxt, FUNC0 (0x3ff), NULL_RTX),
		   FUNC0 (FUNC12 (0x8410a000, SImode)),
		   NULL_RTX, 1, OPTAB_DIRECT));

  /* On UltraSPARC a flush flushes an entire cache line.  The trampoline is
     aligned on a 16 byte boundary so one flush clears it all.  */
  FUNC1 (FUNC7 (FUNC13 (FUNC8 (SImode, tramp))));
  if (sparc_cpu != PROCESSOR_ULTRASPARC
      && sparc_cpu != PROCESSOR_ULTRASPARC3
      && sparc_cpu != PROCESSOR_NIAGARA)
    FUNC1 (FUNC7 (FUNC13 (FUNC8 (SImode,
						     FUNC10 (tramp, 8)))));

  /* Call __enable_execute_stack after writing onto the stack to make sure
     the stack address is accessible.  */
#ifdef ENABLE_EXECUTE_STACK
  emit_library_call (gen_rtx_SYMBOL_REF (Pmode, "__enable_execute_stack"),
                     LCT_NORMAL, VOIDmode, 1, tramp, Pmode);
#endif

}