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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ optimize ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static rtx
FUNC12 (tree arglist, rtx target)
{
  enum machine_mode tmode, mode0;
  tree arg0, arg1;
  int elt;
  rtx op0;

  arg0 = FUNC2 (arglist);
  arg1 = FUNC2 (FUNC0 (arglist));

  op0 = FUNC5 (arg0);
  elt = FUNC9 (FUNC1 (arg0), arg1);

  tmode = FUNC3 (FUNC1 (FUNC1 (arg0)));
  mode0 = FUNC3 (FUNC1 (arg0));
  FUNC7 (FUNC4 (mode0));

  op0 = FUNC6 (mode0, op0);

  if (optimize || !target || !FUNC10 (target, tmode))
    target = FUNC8 (tmode);

  FUNC11 (target, op0, elt);

  return target;
}