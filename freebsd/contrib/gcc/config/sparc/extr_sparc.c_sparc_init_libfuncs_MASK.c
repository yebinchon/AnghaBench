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
 scalar_t__ DITF_CONVERSION_LIBFUNCS ; 
 int /*<<< orphan*/  DImode ; 
 int /*<<< orphan*/  SFmode ; 
 int /*<<< orphan*/  SImode ; 
 scalar_t__ SUN_CONVERSION_LIBFUNCS ; 
 scalar_t__ SUN_INTEGER_MULTIPLY_64 ; 
 scalar_t__ TARGET_ARCH32 ; 
 scalar_t__ TARGET_ARCH64 ; 
 scalar_t__ TARGET_FPU ; 
 int /*<<< orphan*/  TFmode ; 
 int /*<<< orphan*/  add_optab ; 
 int /*<<< orphan*/  eq_optab ; 
 int /*<<< orphan*/  ge_optab ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  gt_optab ; 
 int /*<<< orphan*/  le_optab ; 
 int /*<<< orphan*/  lt_optab ; 
 int /*<<< orphan*/  ne_optab ; 
 int /*<<< orphan*/  neg_optab ; 
 int /*<<< orphan*/  sdiv_optab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sext_optab ; 
 int /*<<< orphan*/  sfix_optab ; 
 int /*<<< orphan*/  sfloat_optab ; 
 int /*<<< orphan*/  smod_optab ; 
 int /*<<< orphan*/  smul_optab ; 
 int /*<<< orphan*/  sqrt_optab ; 
 int /*<<< orphan*/  sub_optab ; 
 int /*<<< orphan*/  trunc_optab ; 
 int /*<<< orphan*/  udiv_optab ; 
 int /*<<< orphan*/  ufix_optab ; 
 int /*<<< orphan*/  ufloat_optab ; 
 int /*<<< orphan*/  umod_optab ; 

__attribute__((used)) static void
FUNC3 (void)
{
  if (TARGET_ARCH32)
    {
      /* Use the subroutines that Sun's library provides for integer
	 multiply and divide.  The `*' prevents an underscore from
	 being prepended by the compiler. .umul is a little faster
	 than .mul.  */
      FUNC2 (smul_optab, SImode, "*.umul");
      FUNC2 (sdiv_optab, SImode, "*.div");
      FUNC2 (udiv_optab, SImode, "*.udiv");
      FUNC2 (smod_optab, SImode, "*.rem");
      FUNC2 (umod_optab, SImode, "*.urem");

      /* TFmode arithmetic.  These names are part of the SPARC 32bit ABI.  */
      FUNC2 (add_optab, TFmode, "_Q_add");
      FUNC2 (sub_optab, TFmode, "_Q_sub");
      FUNC2 (neg_optab, TFmode, "_Q_neg");
      FUNC2 (smul_optab, TFmode, "_Q_mul");
      FUNC2 (sdiv_optab, TFmode, "_Q_div");

      /* We can define the TFmode sqrt optab only if TARGET_FPU.  This
	 is because with soft-float, the SFmode and DFmode sqrt
	 instructions will be absent, and the compiler will notice and
	 try to use the TFmode sqrt instruction for calls to the
	 builtin function sqrt, but this fails.  */
      if (TARGET_FPU)
	FUNC2 (sqrt_optab, TFmode, "_Q_sqrt");

      FUNC2 (eq_optab, TFmode, "_Q_feq");
      FUNC2 (ne_optab, TFmode, "_Q_fne");
      FUNC2 (gt_optab, TFmode, "_Q_fgt");
      FUNC2 (ge_optab, TFmode, "_Q_fge");
      FUNC2 (lt_optab, TFmode, "_Q_flt");
      FUNC2 (le_optab, TFmode, "_Q_fle");

      FUNC1 (sext_optab,   TFmode, SFmode, "_Q_stoq");
      FUNC1 (sext_optab,   TFmode, DFmode, "_Q_dtoq");
      FUNC1 (trunc_optab,  SFmode, TFmode, "_Q_qtos");
      FUNC1 (trunc_optab,  DFmode, TFmode, "_Q_qtod");

      FUNC1 (sfix_optab,   SImode, TFmode, "_Q_qtoi");
      FUNC1 (ufix_optab,   SImode, TFmode, "_Q_qtou");
      FUNC1 (sfloat_optab, TFmode, SImode, "_Q_itoq");
      FUNC1 (ufloat_optab, TFmode, SImode, "_Q_utoq");

      if (DITF_CONVERSION_LIBFUNCS)
	{
	  FUNC1 (sfix_optab,   DImode, TFmode, "_Q_qtoll");
	  FUNC1 (ufix_optab,   DImode, TFmode, "_Q_qtoull");
	  FUNC1 (sfloat_optab, TFmode, DImode, "_Q_lltoq");
	  FUNC1 (ufloat_optab, TFmode, DImode, "_Q_ulltoq");
	}

      if (SUN_CONVERSION_LIBFUNCS)
	{
	  FUNC1 (sfix_optab, DImode, SFmode, "__ftoll");
	  FUNC1 (ufix_optab, DImode, SFmode, "__ftoull");
	  FUNC1 (sfix_optab, DImode, DFmode, "__dtoll");
	  FUNC1 (ufix_optab, DImode, DFmode, "__dtoull");
	}
    }
  if (TARGET_ARCH64)
    {
      /* In the SPARC 64bit ABI, SImode multiply and divide functions
	 do not exist in the library.  Make sure the compiler does not
	 emit calls to them by accident.  (It should always use the
         hardware instructions.)  */
      FUNC2 (smul_optab, SImode, 0);
      FUNC2 (sdiv_optab, SImode, 0);
      FUNC2 (udiv_optab, SImode, 0);
      FUNC2 (smod_optab, SImode, 0);
      FUNC2 (umod_optab, SImode, 0);

      if (SUN_INTEGER_MULTIPLY_64)
	{
	  FUNC2 (smul_optab, DImode, "__mul64");
	  FUNC2 (sdiv_optab, DImode, "__div64");
	  FUNC2 (udiv_optab, DImode, "__udiv64");
	  FUNC2 (smod_optab, DImode, "__rem64");
	  FUNC2 (umod_optab, DImode, "__urem64");
	}

      if (SUN_CONVERSION_LIBFUNCS)
	{
	  FUNC1 (sfix_optab, DImode, SFmode, "__ftol");
	  FUNC1 (ufix_optab, DImode, SFmode, "__ftoul");
	  FUNC1 (sfix_optab, DImode, DFmode, "__dtol");
	  FUNC1 (ufix_optab, DImode, DFmode, "__dtoul");
	}
    }

  FUNC0 ();
}