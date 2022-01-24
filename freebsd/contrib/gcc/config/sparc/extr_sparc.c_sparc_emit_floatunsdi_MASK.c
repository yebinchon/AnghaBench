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
 int DImode ; 
 int /*<<< orphan*/  LT ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC15 (rtx *operands, enum machine_mode mode)
{
  rtx neglab, donelab, i0, i1, f0, in, out;

  out = operands[0];
  in = FUNC5 (DImode, operands[1]);
  neglab = FUNC9 ();
  donelab = FUNC9 ();
  i0 = FUNC11 (DImode);
  i1 = FUNC11 (DImode);
  f0 = FUNC11 (mode);

  FUNC1 (in, const0_rtx, LT, const0_rtx, DImode, 0, neglab);

  FUNC2 (FUNC14 (VOIDmode, out, FUNC12 (mode, in)));
  FUNC3 (FUNC8 (donelab));
  FUNC0 ();

  FUNC4 (neglab);

  FUNC2 (FUNC10 (i0, in, const1_rtx));
  FUNC2 (FUNC6 (i1, in, const1_rtx));
  FUNC2 (FUNC7 (i0, i0, i1));
  FUNC2 (FUNC14 (VOIDmode, f0, FUNC12 (mode, i0)));
  FUNC2 (FUNC14 (VOIDmode, out, FUNC13 (mode, f0, f0)));

  FUNC4 (donelab);
}