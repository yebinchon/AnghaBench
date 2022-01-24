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
typedef  int /*<<< orphan*/ * rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  AND ; 
 int DImode ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IOR ; 
 int /*<<< orphan*/  LSHIFTRT ; 
 int /*<<< orphan*/  LT ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
 int Pmode ; 
 int SImode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/ * const1_rtx ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC16 (rtx operands[2])
{
  rtx neglab, donelab, i0, i1, f0, in, out;
  enum machine_mode mode, inmode;

  inmode = FUNC0 (operands[1]);
  FUNC9 (inmode == SImode || inmode == DImode);

  out = operands[0];
  in = FUNC8 (inmode, operands[1]);
  mode = FUNC0 (out);
  neglab = FUNC11 ();
  donelab = FUNC11 ();
  i1 = FUNC12 (Pmode);
  f0 = FUNC12 (mode);

  FUNC2 (in, const0_rtx, LT, const0_rtx, Pmode, 0, neglab);

  FUNC3 (FUNC15 (VOIDmode, out, FUNC13 (mode, in)));
  FUNC4 (FUNC10 (donelab));
  FUNC1 ();

  FUNC5 (neglab);

  i0 = FUNC7 (Pmode, LSHIFTRT, in, const1_rtx, NULL, 1, OPTAB_DIRECT);
  i1 = FUNC7 (Pmode, AND, in, const1_rtx, NULL, 1, OPTAB_DIRECT);
  i0 = FUNC7 (Pmode, IOR, i0, i1, i0, 1, OPTAB_DIRECT);
  FUNC6 (f0, i0, 0);
  FUNC3 (FUNC15 (VOIDmode, out, FUNC14 (mode, f0, f0)));

  FUNC5 (donelab);
}