#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_5__ {TYPE_1__* handlers; } ;
struct TYPE_4__ {scalar_t__ insn_code; } ;

/* Variables and functions */
 scalar_t__ CODE_FOR_nothing ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  REAL_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 TYPE_2__* sincos_optab ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC12 (tree exp)
{
  rtx op0, op1, op2, target1, target2;
  tree arglist = FUNC1 (exp, 1);
  enum machine_mode mode;
  tree arg, sinp, cosp;
  int result;

  if (!FUNC11 (arglist, REAL_TYPE,
			 POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;

  arg = FUNC3 (arglist);
  sinp = FUNC3 (FUNC0 (arglist));
  cosp = FUNC3 (FUNC0 (FUNC0 (arglist)));

  /* Make a suitable register to place result in.  */
  mode = FUNC4 (FUNC2 (arg));

  /* Check if sincos insn is available, otherwise emit the call.  */
  if (sincos_optab->handlers[(int) mode].insn_code == CODE_FOR_nothing)
    return NULL_RTX;

  target1 = FUNC10 (mode);
  target2 = FUNC10 (mode);

  op0 = FUNC7 (arg);
  op1 = FUNC7 (FUNC5 (sinp));
  op2 = FUNC7 (FUNC5 (cosp));

  /* Compute into target1 and target2.
     Set TARGET to wherever the result comes back.  */
  result = FUNC8 (sincos_optab, op0, target2, target1, 0);
  FUNC9 (result);

  /* Move target1 and target2 to the memory locations indicated
     by op1 and op2.  */
  FUNC6 (op1, target1);
  FUNC6 (op2, target2);

  return const0_rtx;
}