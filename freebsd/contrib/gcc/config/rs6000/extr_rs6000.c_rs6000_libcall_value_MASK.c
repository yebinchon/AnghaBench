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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ split_complex_arg; } ;
struct TYPE_4__ {TYPE_1__ calls; } ;

/* Variables and functions */
 unsigned int ALTIVEC_ARG_RETURN ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int DCmode ; 
 scalar_t__ FUNC2 (int) ; 
 int DFmode ; 
 int DImode ; 
 unsigned int FP_ARG_RETURN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int GP_ARG_RETURN ; 
 scalar_t__ FUNC4 (int) ; 
 int SImode ; 
 scalar_t__ TARGET_32BIT ; 
 scalar_t__ TARGET_ALTIVEC ; 
 scalar_t__ TARGET_ALTIVEC_ABI ; 
 scalar_t__ TARGET_E500_DOUBLE ; 
 scalar_t__ TARGET_FPRS ; 
 scalar_t__ TARGET_HARD_FLOAT ; 
 scalar_t__ TARGET_POWERPC64 ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 TYPE_2__ targetm ; 

rtx
FUNC11 (enum machine_mode mode)
{
  unsigned int regno;

  if (TARGET_32BIT && TARGET_POWERPC64 && mode == DImode)
    {
      /* Long long return value need be split in -mpowerpc64, 32bit ABI.  */
      return FUNC7 (DImode,
	FUNC5 (2,
		   FUNC6 (VOIDmode,
				      FUNC8 (SImode, GP_ARG_RETURN),
				      const0_rtx),
		   FUNC6 (VOIDmode,
				      FUNC8 (SImode,
						   GP_ARG_RETURN + 1),
				      FUNC3 (4))));
    }

  if (FUNC2 (mode))
    regno = GP_ARG_RETURN;
  else if (FUNC4 (mode)
	   && TARGET_HARD_FLOAT && TARGET_FPRS)
    regno = FP_ARG_RETURN;
  else if (FUNC0 (mode)
	   && TARGET_ALTIVEC && TARGET_ALTIVEC_ABI)
    regno = ALTIVEC_ARG_RETURN;
  else if (FUNC1 (mode) && targetm.calls.split_complex_arg)
    return FUNC9 (mode);
  else if (TARGET_E500_DOUBLE && TARGET_HARD_FLOAT
	   && (mode == DFmode || mode == DCmode))
    return FUNC10 (mode, GP_ARG_RETURN);
  else
    regno = GP_ARG_RETURN;

  return FUNC8 (mode, regno);
}