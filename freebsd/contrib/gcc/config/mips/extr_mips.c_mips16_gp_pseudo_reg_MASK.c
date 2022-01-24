#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {scalar_t__ mips16_gp_pseudo_rtx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NOTE_INSN_FUNCTION_BEG ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  UNSPEC_GP ; 
 int /*<<< orphan*/  VOIDmode ; 
 TYPE_2__* cfun ; 
 int /*<<< orphan*/  const0_rtx ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static rtx
FUNC14 (void)
{
  if (cfun->machine->mips16_gp_pseudo_rtx == NULL_RTX)
    {
      rtx unspec;
      rtx insn, scan;

      cfun->machine->mips16_gp_pseudo_rtx = FUNC6 (Pmode);

      /* We want to initialize this to a value which gcc will believe
         is constant.  */
      FUNC13 ();
      unspec = FUNC9 (VOIDmode, FUNC7 (1, const0_rtx), UNSPEC_GP);
      FUNC4 (cfun->machine->mips16_gp_pseudo_rtx,
		      FUNC8 (Pmode, unspec));
      insn = FUNC10 ();
      FUNC5 ();

      FUNC12 ();
      /* We need to emit the initialization after the FUNCTION_BEG
         note, so that it will be integrated.  */
      for (scan = FUNC10 (); scan != NULL_RTX; scan = FUNC0 (scan))
	if (FUNC2 (scan)
	    && FUNC1 (scan) == NOTE_INSN_FUNCTION_BEG)
	  break;
      if (scan == NULL_RTX)
	scan = FUNC10 ();
      insn = FUNC3 (insn, scan);
      FUNC11 ();
    }

  return cfun->machine->mips16_gp_pseudo_rtx;
}