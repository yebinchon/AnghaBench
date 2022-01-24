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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int GEU ; 
 int GTU ; 
 int LEU ; 
 int LTU ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ cc0_rtx ; 
 scalar_t__ const0_rtx ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int,scalar_t__,int,int) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 

rtx
FUNC12 (rtx op0, rtx op1, enum rtx_code code, int unsignedp,
		  enum machine_mode mode, rtx size)
{
  rtx tem;

  /* If one operand is constant, make it the second one.  Only do this
     if the other operand is not constant as well.  */

  if (FUNC9 (op0, op1))
    {
      tem = op0;
      op0 = op1;
      op1 = tem;
      code = FUNC10 (code);
    }

  FUNC5 ();

  code = unsignedp ? FUNC11 (code) : code;
  tem = FUNC8 (code, VOIDmode, mode, op0, op1);
  if (tem)
    {
      if (FUNC1 (tem))
	return tem;

      if (FUNC0 (tem))
	{
	  code = FUNC2 (tem);
	  op0 = FUNC4 (tem, 0);
	  op1 = FUNC4 (tem, 1);
	  mode = FUNC3 (op0);
	  unsignedp = (code == GTU || code == LTU
		       || code == GEU || code == LEU);
	}
    }

  FUNC6 (op0, op1, code, size, mode, unsignedp);

#if HAVE_cc0
  return gen_rtx_fmt_ee (code, VOIDmode, cc0_rtx, const0_rtx);
#else
  return FUNC7 (code, VOIDmode, op0, op1);
#endif
}