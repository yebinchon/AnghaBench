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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int,scalar_t__,scalar_t__,int,int,int) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

rtx
FUNC9 (rtx target, enum rtx_code code, rtx op0, rtx op1,
		       enum machine_mode mode, int unsignedp, int normalizep)
{
  rtx tem, label;

  /* First see if emit_store_flag can do the job.  */
  tem = FUNC5 (target, code, op0, op1, mode, unsignedp, normalizep);
  if (tem != 0)
    return tem;

  if (normalizep == 0)
    normalizep = 1;

  /* If this failed, we have to do this with set/compare/jump/set code.  */

  if (!FUNC1 (target)
      || FUNC8 (target, op0) || FUNC8 (target, op1))
    target = FUNC7 (FUNC0 (target));

  FUNC4 (target, const1_rtx);
  label = FUNC6 ();
  FUNC2 (op0, op1, code, unsignedp, mode, NULL_RTX,
			   NULL_RTX, label);

  FUNC4 (target, const0_rtx);
  FUNC3 (label);

  return target;
}