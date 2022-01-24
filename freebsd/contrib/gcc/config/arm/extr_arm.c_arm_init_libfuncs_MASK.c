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
 int /*<<< orphan*/  DImode ; 
 int /*<<< orphan*/  SFmode ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  TARGET_BPABI ; 
 int /*<<< orphan*/  add_optab ; 
 int /*<<< orphan*/  ashl_optab ; 
 int /*<<< orphan*/  ashr_optab ; 
 int /*<<< orphan*/  cmp_optab ; 
 int /*<<< orphan*/  eq_optab ; 
 int /*<<< orphan*/  ge_optab ; 
 int /*<<< orphan*/  gt_optab ; 
 int /*<<< orphan*/  le_optab ; 
 int /*<<< orphan*/  lshr_optab ; 
 int /*<<< orphan*/  lt_optab ; 
 int /*<<< orphan*/  ne_optab ; 
 int /*<<< orphan*/  neg_optab ; 
 int /*<<< orphan*/  sdiv_optab ; 
 int /*<<< orphan*/  sdivmod_optab ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sext_optab ; 
 int /*<<< orphan*/  sfix_optab ; 
 int /*<<< orphan*/  sfloat_optab ; 
 int /*<<< orphan*/  smod_optab ; 
 int /*<<< orphan*/  smul_optab ; 
 int /*<<< orphan*/  sub_optab ; 
 int /*<<< orphan*/  trunc_optab ; 
 int /*<<< orphan*/  ucmp_optab ; 
 int /*<<< orphan*/  udiv_optab ; 
 int /*<<< orphan*/  udivmod_optab ; 
 int /*<<< orphan*/  ufix_optab ; 
 int /*<<< orphan*/  ufloat_optab ; 
 int /*<<< orphan*/  umod_optab ; 
 int /*<<< orphan*/  unord_optab ; 

__attribute__((used)) static void
FUNC2 (void)
{
  /* There are no special library functions unless we are using the
     ARM BPABI.  */
  if (!TARGET_BPABI)
    return;

  /* The functions below are described in Section 4 of the "Run-Time
     ABI for the ARM architecture", Version 1.0.  */

  /* Double-precision floating-point arithmetic.  Table 2.  */
  FUNC1 (add_optab, DFmode, "__aeabi_dadd");
  FUNC1 (sdiv_optab, DFmode, "__aeabi_ddiv");
  FUNC1 (smul_optab, DFmode, "__aeabi_dmul");
  FUNC1 (neg_optab, DFmode, "__aeabi_dneg");
  FUNC1 (sub_optab, DFmode, "__aeabi_dsub");

  /* Double-precision comparisons.  Table 3.  */
  FUNC1 (eq_optab, DFmode, "__aeabi_dcmpeq");
  FUNC1 (ne_optab, DFmode, NULL);
  FUNC1 (lt_optab, DFmode, "__aeabi_dcmplt");
  FUNC1 (le_optab, DFmode, "__aeabi_dcmple");
  FUNC1 (ge_optab, DFmode, "__aeabi_dcmpge");
  FUNC1 (gt_optab, DFmode, "__aeabi_dcmpgt");
  FUNC1 (unord_optab, DFmode, "__aeabi_dcmpun");

  /* Single-precision floating-point arithmetic.  Table 4.  */
  FUNC1 (add_optab, SFmode, "__aeabi_fadd");
  FUNC1 (sdiv_optab, SFmode, "__aeabi_fdiv");
  FUNC1 (smul_optab, SFmode, "__aeabi_fmul");
  FUNC1 (neg_optab, SFmode, "__aeabi_fneg");
  FUNC1 (sub_optab, SFmode, "__aeabi_fsub");

  /* Single-precision comparisons.  Table 5.  */
  FUNC1 (eq_optab, SFmode, "__aeabi_fcmpeq");
  FUNC1 (ne_optab, SFmode, NULL);
  FUNC1 (lt_optab, SFmode, "__aeabi_fcmplt");
  FUNC1 (le_optab, SFmode, "__aeabi_fcmple");
  FUNC1 (ge_optab, SFmode, "__aeabi_fcmpge");
  FUNC1 (gt_optab, SFmode, "__aeabi_fcmpgt");
  FUNC1 (unord_optab, SFmode, "__aeabi_fcmpun");

  /* Floating-point to integer conversions.  Table 6.  */
  FUNC0 (sfix_optab, SImode, DFmode, "__aeabi_d2iz");
  FUNC0 (ufix_optab, SImode, DFmode, "__aeabi_d2uiz");
  FUNC0 (sfix_optab, DImode, DFmode, "__aeabi_d2lz");
  FUNC0 (ufix_optab, DImode, DFmode, "__aeabi_d2ulz");
  FUNC0 (sfix_optab, SImode, SFmode, "__aeabi_f2iz");
  FUNC0 (ufix_optab, SImode, SFmode, "__aeabi_f2uiz");
  FUNC0 (sfix_optab, DImode, SFmode, "__aeabi_f2lz");
  FUNC0 (ufix_optab, DImode, SFmode, "__aeabi_f2ulz");

  /* Conversions between floating types.  Table 7.  */
  FUNC0 (trunc_optab, SFmode, DFmode, "__aeabi_d2f");
  FUNC0 (sext_optab, DFmode, SFmode, "__aeabi_f2d");

  /* Integer to floating-point conversions.  Table 8.  */
  FUNC0 (sfloat_optab, DFmode, SImode, "__aeabi_i2d");
  FUNC0 (ufloat_optab, DFmode, SImode, "__aeabi_ui2d");
  FUNC0 (sfloat_optab, DFmode, DImode, "__aeabi_l2d");
  FUNC0 (ufloat_optab, DFmode, DImode, "__aeabi_ul2d");
  FUNC0 (sfloat_optab, SFmode, SImode, "__aeabi_i2f");
  FUNC0 (ufloat_optab, SFmode, SImode, "__aeabi_ui2f");
  FUNC0 (sfloat_optab, SFmode, DImode, "__aeabi_l2f");
  FUNC0 (ufloat_optab, SFmode, DImode, "__aeabi_ul2f");

  /* Long long.  Table 9.  */
  FUNC1 (smul_optab, DImode, "__aeabi_lmul");
  FUNC1 (sdivmod_optab, DImode, "__aeabi_ldivmod");
  FUNC1 (udivmod_optab, DImode, "__aeabi_uldivmod");
  FUNC1 (ashl_optab, DImode, "__aeabi_llsl");
  FUNC1 (lshr_optab, DImode, "__aeabi_llsr");
  FUNC1 (ashr_optab, DImode, "__aeabi_lasr");
  FUNC1 (cmp_optab, DImode, "__aeabi_lcmp");
  FUNC1 (ucmp_optab, DImode, "__aeabi_ulcmp");

  /* Integer (32/32->32) division.  \S 4.3.1.  */
  FUNC1 (sdivmod_optab, SImode, "__aeabi_idivmod");
  FUNC1 (udivmod_optab, SImode, "__aeabi_uidivmod");

  /* The divmod functions are designed so that they can be used for
     plain division, even though they return both the quotient and the
     remainder.  The quotient is returned in the usual location (i.e.,
     r0 for SImode, {r0, r1} for DImode), just as would be expected
     for an ordinary division routine.  Because the AAPCS calling
     conventions specify that all of { r0, r1, r2, r3 } are
     callee-saved registers, there is no need to tell the compiler
     explicitly that those registers are clobbered by these
     routines.  */
  FUNC1 (sdiv_optab, DImode, "__aeabi_ldivmod");
  FUNC1 (udiv_optab, DImode, "__aeabi_uldivmod");

  /* For SImode division the ABI provides div-without-mod routines,
     which are faster.  */
  FUNC1 (sdiv_optab, SImode, "__aeabi_idiv");
  FUNC1 (udiv_optab, SImode, "__aeabi_uidiv");

  /* We don't have mod libcalls.  Fortunately gcc knows how to use the
     divmod libcalls instead.  */
  FUNC1 (smod_optab, DImode, NULL);
  FUNC1 (umod_optab, DImode, NULL);
  FUNC1 (smod_optab, SImode, NULL);
  FUNC1 (umod_optab, SImode, NULL);
}