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
#define  ABI_AIX 130 
#define  ABI_DARWIN 129 
#define  ABI_V4 128 
 int DEFAULT_ABI ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  SImode ; 
 scalar_t__ TARGET_32BIT ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void
FUNC10 (rtx addr, rtx fnaddr, rtx cxt)
{
  int regsize = (TARGET_32BIT) ? 4 : 8;
  rtx ctx_reg = FUNC5 (Pmode, cxt);

  switch (DEFAULT_ABI)
    {
    default:
      FUNC6 ();

/* Macros to shorten the code expansions below.  */
#define MEM_DEREF(addr) gen_rtx_MEM (Pmode, memory_address (Pmode, addr))
#define MEM_PLUS(addr,offset) \
  gen_rtx_MEM (Pmode, memory_address (Pmode, plus_constant (addr, offset)))

    /* Under AIX, just build the 3 word function descriptor */
    case ABI_AIX:
      {
	rtx fn_reg = FUNC7 (Pmode);
	rtx toc_reg = FUNC7 (Pmode);
	FUNC4 (fn_reg, MEM_DEREF (fnaddr));
	FUNC4 (toc_reg, MEM_PLUS (fnaddr, regsize));
	FUNC4 (MEM_DEREF (addr), fn_reg);
	FUNC4 (MEM_PLUS (addr, regsize), toc_reg);
	FUNC4 (MEM_PLUS (addr, 2*regsize), ctx_reg);
      }
      break;

    /* Under V.4/eabi/darwin, __trampoline_setup does the real work.  */
    case ABI_DARWIN:
    case ABI_V4:
      FUNC3 (FUNC8 (Pmode, "__trampoline_setup"),
			 FALSE, VOIDmode, 4,
			 addr, Pmode,
			 FUNC0 (FUNC9 ()), SImode,
			 fnaddr, Pmode,
			 ctx_reg, Pmode);
      break;
    }

  return;
}