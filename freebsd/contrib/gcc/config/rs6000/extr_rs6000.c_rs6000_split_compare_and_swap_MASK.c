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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  CCmode ; 
 int /*<<< orphan*/  CR0_REGNO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC16 (rtx retval, rtx mem, rtx oldval, rtx newval,
			       rtx scratch)
{
  enum machine_mode mode = FUNC0 (mem);
  rtx label1, label2, x, cond = FUNC14 (CCmode, CR0_REGNO);

  FUNC2 (FUNC10 ());

  label1 = FUNC12 (VOIDmode, FUNC9 ());
  label2 = FUNC12 (VOIDmode, FUNC9 ());
  FUNC3 (FUNC1 (label1, 0));

  FUNC4 (mode, retval, mem);

  x = FUNC11 (CCmode, retval, oldval);
  FUNC2 (FUNC15 (VOIDmode, cond, x));

  x = FUNC13 (VOIDmode, cond, const0_rtx);
  FUNC7 (x, label2);

  FUNC5 (scratch, newval);
  FUNC6 (mode, cond, mem, scratch);

  x = FUNC13 (VOIDmode, cond, const0_rtx);
  FUNC7 (x, label1);

  FUNC2 (FUNC8 ());
  FUNC3 (FUNC1 (label2, 0));
}