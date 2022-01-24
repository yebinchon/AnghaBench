#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum insn_code { ____Placeholder_insn_code } insn_code ;
struct TYPE_4__ {TYPE_1__* operand; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* predicate ) (int /*<<< orphan*/ ,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* insn_data ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC13 (tree cond, bool unsignedp, enum insn_code icode)
{
  enum rtx_code rcode;
  tree t_op0, t_op1;
  rtx rtx_op0, rtx_op1;

  /* This is unlikely. While generating VEC_COND_EXPR, auto vectorizer
     ensures that condition is a relational operation.  */
  FUNC8 (FUNC0 (cond));

  rcode = FUNC10 (FUNC2 (cond), unsignedp);
  t_op0 = FUNC3 (cond, 0);
  t_op1 = FUNC3 (cond, 1);

  /* Expand operands.  */
  rtx_op0 = FUNC6 (t_op0, NULL_RTX, FUNC5 (FUNC4 (t_op0)), 1);
  rtx_op1 = FUNC6 (t_op1, NULL_RTX, FUNC5 (FUNC4 (t_op1)), 1);

  if (!insn_data[icode].operand[4].predicate (rtx_op0, FUNC1 (rtx_op0))
      && FUNC1 (rtx_op0) != VOIDmode)
    rtx_op0 = FUNC7 (FUNC1 (rtx_op0), rtx_op0);

  if (!insn_data[icode].operand[5].predicate (rtx_op1, FUNC1 (rtx_op1))
      && FUNC1 (rtx_op1) != VOIDmode)
    rtx_op1 = FUNC7 (FUNC1 (rtx_op1), rtx_op1);

  return FUNC9 (rcode, VOIDmode, rtx_op0, rtx_op1);
}