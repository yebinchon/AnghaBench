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
 int /*<<< orphan*/  TFmode ; 
 int /*<<< orphan*/  TImode ; 
 int /*<<< orphan*/  XFmode ; 
 int /*<<< orphan*/  add_optab ; 
 int /*<<< orphan*/  neg_optab ; 
 int /*<<< orphan*/  sdiv_optab ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sext_optab ; 
 int /*<<< orphan*/  sfix_optab ; 
 int /*<<< orphan*/  sfloat_optab ; 
 int /*<<< orphan*/  smod_optab ; 
 int /*<<< orphan*/  smul_optab ; 
 int /*<<< orphan*/  sub_optab ; 
 int /*<<< orphan*/  trunc_optab ; 
 int /*<<< orphan*/  udiv_optab ; 
 int /*<<< orphan*/  ufix_optab ; 
 int /*<<< orphan*/  ufloat_optab ; 
 int /*<<< orphan*/  umod_optab ; 

__attribute__((used)) static void
FUNC2 (void)
{
  FUNC1 (sdiv_optab, SImode, "__divsi3");
  FUNC1 (udiv_optab, SImode, "__udivsi3");
  FUNC1 (smod_optab, SImode, "__modsi3");
  FUNC1 (umod_optab, SImode, "__umodsi3");

  FUNC1 (add_optab, TFmode, "_U_Qfadd");
  FUNC1 (sub_optab, TFmode, "_U_Qfsub");
  FUNC1 (smul_optab, TFmode, "_U_Qfmpy");
  FUNC1 (sdiv_optab, TFmode, "_U_Qfdiv");
  FUNC1 (neg_optab, TFmode, "_U_Qfneg");

  FUNC0 (sext_optab, TFmode, SFmode, "_U_Qfcnvff_sgl_to_quad");
  FUNC0 (sext_optab, TFmode, DFmode, "_U_Qfcnvff_dbl_to_quad");
  FUNC0 (sext_optab, TFmode, XFmode, "_U_Qfcnvff_f80_to_quad");
  FUNC0 (trunc_optab, SFmode, TFmode, "_U_Qfcnvff_quad_to_sgl");
  FUNC0 (trunc_optab, DFmode, TFmode, "_U_Qfcnvff_quad_to_dbl");
  FUNC0 (trunc_optab, XFmode, TFmode, "_U_Qfcnvff_quad_to_f80");

  FUNC0 (sfix_optab, SImode, TFmode, "_U_Qfcnvfxt_quad_to_sgl");
  FUNC0 (sfix_optab, DImode, TFmode, "_U_Qfcnvfxt_quad_to_dbl");
  FUNC0 (sfix_optab, TImode, TFmode, "_U_Qfcnvfxt_quad_to_quad");
  FUNC0 (ufix_optab, SImode, TFmode, "_U_Qfcnvfxut_quad_to_sgl");
  FUNC0 (ufix_optab, DImode, TFmode, "_U_Qfcnvfxut_quad_to_dbl");

  FUNC0 (sfloat_optab, TFmode, SImode, "_U_Qfcnvxf_sgl_to_quad");
  FUNC0 (sfloat_optab, TFmode, DImode, "_U_Qfcnvxf_dbl_to_quad");
  FUNC0 (sfloat_optab, TFmode, TImode, "_U_Qfcnvxf_quad_to_quad");
  /* HP-UX 11.23 libc does not have a function for unsigned
     SImode-to-TFmode conversion.  */
  FUNC0 (ufloat_optab, TFmode, DImode, "_U_Qfcnvxuf_dbl_to_quad");
}