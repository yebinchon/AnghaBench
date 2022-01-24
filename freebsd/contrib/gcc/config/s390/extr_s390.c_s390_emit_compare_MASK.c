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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  CC_REGNUM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ s390_compare_emitted ; 
 int FUNC7 (int,scalar_t__,scalar_t__) ; 

rtx
FUNC8 (enum rtx_code code, rtx op0, rtx op1)
{
  enum machine_mode mode = FUNC7 (code, op0, op1);
  rtx ret = NULL_RTX;

  /* Do not output a redundant compare instruction if a compare_and_swap
     pattern already computed the result and the machine modes are compatible.  */
  if (s390_compare_emitted 
      && (FUNC6 (FUNC0 (s390_compare_emitted), mode)
	  == FUNC0 (s390_compare_emitted)))
    ret = FUNC5 (code, VOIDmode, s390_compare_emitted, const0_rtx); 
  else
    {
      rtx cc = FUNC3 (mode, CC_REGNUM);
      
      FUNC1 (FUNC4 (VOIDmode, cc, FUNC2 (mode, op0, op1)));
      ret = FUNC5 (code, VOIDmode, cc, const0_rtx); 
    }
  s390_compare_emitted = NULL_RTX;
  return ret;
}