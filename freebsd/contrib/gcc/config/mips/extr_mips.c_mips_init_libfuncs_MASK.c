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

/* Variables and functions */
 int /*<<< orphan*/  DFmode ; 
 int /*<<< orphan*/  SFmode ; 
 int /*<<< orphan*/  SImode ; 
 scalar_t__ TARGET_DOUBLE_FLOAT ; 
 scalar_t__ TARGET_FIX_VR4120 ; 
 scalar_t__ TARGET_MIPS16 ; 
 int /*<<< orphan*/  add_optab ; 
 int /*<<< orphan*/  eq_optab ; 
 int /*<<< orphan*/  ge_optab ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  gt_optab ; 
 int /*<<< orphan*/  le_optab ; 
 int /*<<< orphan*/  lt_optab ; 
 scalar_t__ mips16_hard_float ; 
 int /*<<< orphan*/  ne_optab ; 
 int /*<<< orphan*/  sdiv_optab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sext_optab ; 
 int /*<<< orphan*/  sfix_optab ; 
 int /*<<< orphan*/  sfloat_optab ; 
 int /*<<< orphan*/  smod_optab ; 
 int /*<<< orphan*/  smul_optab ; 
 int /*<<< orphan*/  sub_optab ; 
 int /*<<< orphan*/  trunc_optab ; 

__attribute__((used)) static void
FUNC3 (void)
{
  if (TARGET_FIX_VR4120)
    {
      FUNC2 (sdiv_optab, SImode, "__vr4120_divsi3");
      FUNC2 (smod_optab, SImode, "__vr4120_modsi3");
    }

  if (TARGET_MIPS16 && mips16_hard_float)
    {
      FUNC2 (add_optab, SFmode, "__mips16_addsf3");
      FUNC2 (sub_optab, SFmode, "__mips16_subsf3");
      FUNC2 (smul_optab, SFmode, "__mips16_mulsf3");
      FUNC2 (sdiv_optab, SFmode, "__mips16_divsf3");

      FUNC2 (eq_optab, SFmode, "__mips16_eqsf2");
      FUNC2 (ne_optab, SFmode, "__mips16_nesf2");
      FUNC2 (gt_optab, SFmode, "__mips16_gtsf2");
      FUNC2 (ge_optab, SFmode, "__mips16_gesf2");
      FUNC2 (lt_optab, SFmode, "__mips16_ltsf2");
      FUNC2 (le_optab, SFmode, "__mips16_lesf2");

      FUNC1 (sfix_optab, SImode, SFmode, "__mips16_fix_truncsfsi");
      FUNC1 (sfloat_optab, SFmode, SImode, "__mips16_floatsisf");

      if (TARGET_DOUBLE_FLOAT)
	{
	  FUNC2 (add_optab, DFmode, "__mips16_adddf3");
	  FUNC2 (sub_optab, DFmode, "__mips16_subdf3");
	  FUNC2 (smul_optab, DFmode, "__mips16_muldf3");
	  FUNC2 (sdiv_optab, DFmode, "__mips16_divdf3");

	  FUNC2 (eq_optab, DFmode, "__mips16_eqdf2");
	  FUNC2 (ne_optab, DFmode, "__mips16_nedf2");
	  FUNC2 (gt_optab, DFmode, "__mips16_gtdf2");
	  FUNC2 (ge_optab, DFmode, "__mips16_gedf2");
	  FUNC2 (lt_optab, DFmode, "__mips16_ltdf2");
	  FUNC2 (le_optab, DFmode, "__mips16_ledf2");

	  FUNC1 (sext_optab, DFmode, SFmode, "__mips16_extendsfdf2");
	  FUNC1 (trunc_optab, SFmode, DFmode, "__mips16_truncdfsf2");

	  FUNC1 (sfix_optab, SImode, DFmode, "__mips16_fix_truncdfsi");
	  FUNC1 (sfloat_optab, DFmode, SImode, "__mips16_floatsidf");
	}
    }
  else
    FUNC0 ();
}