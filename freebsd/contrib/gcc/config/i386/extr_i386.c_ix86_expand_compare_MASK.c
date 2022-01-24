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
typedef  void* rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* NULL_RTX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 void* ix86_compare_emitted ; 
 void* ix86_compare_op0 ; 
 void* ix86_compare_op1 ; 
 void* FUNC3 (int,void*,void*,void*,void**,void**) ; 
 void* FUNC4 (int,void*,void*) ; 

rtx
FUNC5 (enum rtx_code code, rtx *second_test, rtx *bypass_test)
{
  rtx op0, op1, ret;
  op0 = ix86_compare_op0;
  op1 = ix86_compare_op1;

  if (second_test)
    *second_test = NULL_RTX;
  if (bypass_test)
    *bypass_test = NULL_RTX;

  if (ix86_compare_emitted)
    {
      ret = FUNC2 (code, VOIDmode, ix86_compare_emitted, const0_rtx);
      ix86_compare_emitted = NULL_RTX;
    }
  else if (FUNC1 (FUNC0 (op0)))
    ret = FUNC3 (code, op0, op1, NULL_RTX,
				  second_test, bypass_test);
  else
    ret = FUNC4 (code, op0, op1);

  return ret;
}