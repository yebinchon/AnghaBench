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
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ AND ; 
 scalar_t__ CONST_INT ; 
 int DFmode ; 
 int DImode ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ PLUS ; 
 scalar_t__ PRE_DEC ; 
 scalar_t__ PRE_INC ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ TARGET_ALTIVEC ; 
 scalar_t__ TARGET_E500_DOUBLE ; 
 scalar_t__ TARGET_FPRS ; 
 scalar_t__ TARGET_HARD_FLOAT ; 
 scalar_t__ TARGET_POWERPC64 ; 
 scalar_t__ TARGET_UPDATE ; 
 int TFmode ; 
 int TImode ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ arg_pointer_rtx ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (int,scalar_t__,int) ; 
 scalar_t__ FUNC10 (int,scalar_t__) ; 
 scalar_t__ FUNC11 (int,scalar_t__,int) ; 
 scalar_t__ virtual_stack_vars_rtx ; 

int
FUNC12 (enum machine_mode mode, rtx x, int reg_ok_strict)
{
  /* If this is an unaligned stvx/ldvx type address, discard the outer AND.  */
  if (TARGET_ALTIVEC
      && FUNC0 (mode)
      && FUNC1 (x) == AND
      && FUNC1 (FUNC5 (x, 1)) == CONST_INT
      && FUNC2 (FUNC5 (x, 1)) == -16)
    x = FUNC5 (x, 0);

  if (FUNC3 (x))
    return 0;
  if (FUNC8 (x, reg_ok_strict))
    return 1;
  if ((FUNC1 (x) == PRE_INC || FUNC1 (x) == PRE_DEC)
      && !FUNC0 (mode)
      && !FUNC4 (mode)
      && mode != TFmode
      /* Restrict addressing for DI because of our SUBREG hackery.  */
      && !(TARGET_E500_DOUBLE && (mode == DFmode || mode == DImode))
      && TARGET_UPDATE
      && FUNC8 (FUNC5 (x, 0), reg_ok_strict))
    return 1;
  if (FUNC10 (mode, x))
    return 1;
  if (FUNC6 (x))
    return 1;
  /* If not REG_OK_STRICT (before reload) let pass any stack offset.  */
  if (! reg_ok_strict
      && FUNC1 (x) == PLUS
      && FUNC1 (FUNC5 (x, 0)) == REG
      && (FUNC5 (x, 0) == virtual_stack_vars_rtx
	  || FUNC5 (x, 0) == arg_pointer_rtx)
      && FUNC1 (FUNC5 (x, 1)) == CONST_INT)
    return 1;
  if (FUNC11 (mode, x, reg_ok_strict))
    return 1;
  if (mode != TImode
      && mode != TFmode
      && ((TARGET_HARD_FLOAT && TARGET_FPRS)
	  || TARGET_POWERPC64
	  || ((mode != DFmode || TARGET_E500_DOUBLE) && mode != TFmode))
      && (TARGET_POWERPC64 || mode != DImode)
      && FUNC7 (x, reg_ok_strict))
    return 1;
  if (FUNC9 (mode, x, reg_ok_strict))
    return 1;
  return 0;
}