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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static rtx
FUNC12 (tree arglist)
{
  enum machine_mode tmode, mode1;
  tree arg0, arg1, arg2;
  int elt;
  rtx op0, op1;

  arg0 = FUNC3 (arglist);
  arg1 = FUNC3 (FUNC1 (arglist));
  arg2 = FUNC3 (FUNC1 (FUNC1 (arglist)));

  tmode = FUNC4 (FUNC2 (arg0));
  mode1 = FUNC4 (FUNC2 (FUNC2 (arg0)));
  FUNC9 (FUNC5 (tmode));

  op0 = FUNC7 (arg0, NULL_RTX, tmode, 0);
  op1 = FUNC7 (arg1, NULL_RTX, mode1, 0);
  elt = FUNC10 (FUNC2 (arg0), arg2);

  if (FUNC0 (op1) != mode1 && FUNC0 (op1) != VOIDmode)
    op1 = FUNC6 (mode1, FUNC0 (op1), op1, true);

  op0 = FUNC8 (tmode, op0);
  op1 = FUNC8 (mode1, op1);

  FUNC11 (op0, op1, elt);

  return op0;
}