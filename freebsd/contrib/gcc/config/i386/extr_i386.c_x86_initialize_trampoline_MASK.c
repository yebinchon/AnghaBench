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
 int /*<<< orphan*/  HImode ; 
 int /*<<< orphan*/  LCT_NORMAL ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  QImode ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  TARGET_64BIT ; 
 int TRAMPOLINE_SIZE ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sub_optab ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC11 (rtx tramp, rtx fnaddr, rtx cxt)
{
  if (!TARGET_64BIT)
    {
      /* Compute offset from the end of the jmp to the target function.  */
      rtx disp = FUNC3 (SImode, sub_optab, fnaddr,
			       FUNC9 (tramp, 10),
			       NULL_RTX, 1, OPTAB_DIRECT);
      FUNC2 (FUNC7 (QImode, tramp),
		      FUNC5 (0xb9, QImode));
      FUNC2 (FUNC7 (SImode, FUNC9 (tramp, 1)), cxt);
      FUNC2 (FUNC7 (QImode, FUNC9 (tramp, 5)),
		      FUNC5 (0xe9, QImode));
      FUNC2 (FUNC7 (SImode, FUNC9 (tramp, 6)), disp);
    }
  else
    {
      int offset = 0;
      /* Try to load address using shorter movl instead of movabs.
         We may want to support movq for kernel mode, but kernel does not use
         trampolines at the moment.  */
      if (FUNC10 (fnaddr, VOIDmode))
	{
	  fnaddr = FUNC0 (DImode, fnaddr);
	  FUNC2 (FUNC7 (HImode, FUNC9 (tramp, offset)),
			  FUNC5 (0xbb41, HImode));
	  FUNC2 (FUNC7 (SImode, FUNC9 (tramp, offset + 2)),
			  FUNC6 (SImode, fnaddr));
	  offset += 6;
	}
      else
	{
	  FUNC2 (FUNC7 (HImode, FUNC9 (tramp, offset)),
			  FUNC5 (0xbb49, HImode));
	  FUNC2 (FUNC7 (DImode, FUNC9 (tramp, offset + 2)),
			  fnaddr);
	  offset += 10;
	}
      /* Load static chain using movabs to r10.  */
      FUNC2 (FUNC7 (HImode, FUNC9 (tramp, offset)),
		      FUNC5 (0xba49, HImode));
      FUNC2 (FUNC7 (DImode, FUNC9 (tramp, offset + 2)),
		      cxt);
      offset += 10;
      /* Jump to the r11 */
      FUNC2 (FUNC7 (HImode, FUNC9 (tramp, offset)),
		      FUNC5 (0xff49, HImode));
      FUNC2 (FUNC7 (QImode, FUNC9 (tramp, offset+2)),
		      FUNC5 (0xe3, QImode));
      offset += 3;
      FUNC4 (offset <= TRAMPOLINE_SIZE);
    }

#ifdef ENABLE_EXECUTE_STACK
  emit_library_call (gen_rtx_SYMBOL_REF (Pmode, "__enable_execute_stack"),
		     LCT_NORMAL, VOIDmode, 1, tramp, Pmode);
#endif
}