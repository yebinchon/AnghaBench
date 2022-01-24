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
 scalar_t__ ABI_V4 ; 
 scalar_t__ DEFAULT_ABI ; 
 int /*<<< orphan*/  DFmode ; 
 int /*<<< orphan*/  SFmode ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  TARGET_IEEEQUAD ; 
 scalar_t__ TARGET_POWER2 ; 
 int /*<<< orphan*/  TARGET_POWERPC ; 
 scalar_t__ TARGET_PPC_GPOPT ; 
 scalar_t__ TARGET_SOFT_FLOAT ; 
 scalar_t__ TARGET_XCOFF ; 
 int /*<<< orphan*/  TARGET_XL_COMPAT ; 
 int /*<<< orphan*/  TFmode ; 
 int /*<<< orphan*/  add_optab ; 
 int /*<<< orphan*/  eq_optab ; 
 int /*<<< orphan*/  ge_optab ; 
 int /*<<< orphan*/  gt_optab ; 
 int /*<<< orphan*/  le_optab ; 
 int /*<<< orphan*/  lt_optab ; 
 int /*<<< orphan*/  ne_optab ; 
 int /*<<< orphan*/  neg_optab ; 
 int /*<<< orphan*/  sdiv_optab ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sext_optab ; 
 int /*<<< orphan*/  sfix_optab ; 
 int /*<<< orphan*/  sfloat_optab ; 
 int /*<<< orphan*/  smul_optab ; 
 int /*<<< orphan*/  sqrt_optab ; 
 int /*<<< orphan*/  sub_optab ; 
 int /*<<< orphan*/  trunc_optab ; 
 int /*<<< orphan*/  ufix_optab ; 
 int /*<<< orphan*/  ufloat_optab ; 
 int /*<<< orphan*/  unord_optab ; 

__attribute__((used)) static void
FUNC2 (void)
{
  if (DEFAULT_ABI != ABI_V4 && TARGET_XCOFF
      && !TARGET_POWER2 && !TARGET_POWERPC)
    {
      /* AIX library routines for float->int conversion.  */
      FUNC0 (sfix_optab, SImode, DFmode, "__itrunc");
      FUNC0 (ufix_optab, SImode, DFmode, "__uitrunc");
      FUNC0 (sfix_optab, SImode, TFmode, "_qitrunc");
      FUNC0 (ufix_optab, SImode, TFmode, "_quitrunc");
    }

  if (!TARGET_IEEEQUAD)
      /* AIX/Darwin/64-bit Linux quad floating point routines.  */
    if (!TARGET_XL_COMPAT)
      {
	FUNC1 (add_optab, TFmode, "__gcc_qadd");
	FUNC1 (sub_optab, TFmode, "__gcc_qsub");
	FUNC1 (smul_optab, TFmode, "__gcc_qmul");
	FUNC1 (sdiv_optab, TFmode, "__gcc_qdiv");

	if (TARGET_SOFT_FLOAT)
	  {
	    FUNC1 (neg_optab, TFmode, "__gcc_qneg");
	    FUNC1 (eq_optab, TFmode, "__gcc_qeq");
	    FUNC1 (ne_optab, TFmode, "__gcc_qne");
	    FUNC1 (gt_optab, TFmode, "__gcc_qgt");
	    FUNC1 (ge_optab, TFmode, "__gcc_qge");
	    FUNC1 (lt_optab, TFmode, "__gcc_qlt");
	    FUNC1 (le_optab, TFmode, "__gcc_qle");
	    FUNC1 (unord_optab, TFmode, "__gcc_qunord");

	    FUNC0 (sext_optab, TFmode, SFmode, "__gcc_stoq");
	    FUNC0 (sext_optab, TFmode, DFmode, "__gcc_dtoq");
	    FUNC0 (trunc_optab, SFmode, TFmode, "__gcc_qtos");
	    FUNC0 (trunc_optab, DFmode, TFmode, "__gcc_qtod");
	    FUNC0 (sfix_optab, SImode, TFmode, "__gcc_qtoi");
	    FUNC0 (ufix_optab, SImode, TFmode, "__gcc_qtou");
	    FUNC0 (sfloat_optab, TFmode, SImode, "__gcc_itoq");
	    FUNC0 (ufloat_optab, TFmode, SImode, "__gcc_utoq");
	  }
      }
    else
      {
	FUNC1 (add_optab, TFmode, "_xlqadd");
	FUNC1 (sub_optab, TFmode, "_xlqsub");
	FUNC1 (smul_optab, TFmode, "_xlqmul");
	FUNC1 (sdiv_optab, TFmode, "_xlqdiv");
      }
  else
    {
      /* 32-bit SVR4 quad floating point routines.  */

      FUNC1 (add_optab, TFmode, "_q_add");
      FUNC1 (sub_optab, TFmode, "_q_sub");
      FUNC1 (neg_optab, TFmode, "_q_neg");
      FUNC1 (smul_optab, TFmode, "_q_mul");
      FUNC1 (sdiv_optab, TFmode, "_q_div");
      if (TARGET_PPC_GPOPT || TARGET_POWER2)
	FUNC1 (sqrt_optab, TFmode, "_q_sqrt");

      FUNC1 (eq_optab, TFmode, "_q_feq");
      FUNC1 (ne_optab, TFmode, "_q_fne");
      FUNC1 (gt_optab, TFmode, "_q_fgt");
      FUNC1 (ge_optab, TFmode, "_q_fge");
      FUNC1 (lt_optab, TFmode, "_q_flt");
      FUNC1 (le_optab, TFmode, "_q_fle");

      FUNC0 (sext_optab, TFmode, SFmode, "_q_stoq");
      FUNC0 (sext_optab, TFmode, DFmode, "_q_dtoq");
      FUNC0 (trunc_optab, SFmode, TFmode, "_q_qtos");
      FUNC0 (trunc_optab, DFmode, TFmode, "_q_qtod");
      FUNC0 (sfix_optab, SImode, TFmode, "_q_qtoi");
      FUNC0 (ufix_optab, SImode, TFmode, "_q_qtou");
      FUNC0 (sfloat_optab, TFmode, SImode, "_q_itoq");
      FUNC0 (ufloat_optab, TFmode, SImode, "_q_utoq");
    }
}