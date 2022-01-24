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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int DImode ; 
 int /*<<< orphan*/  GE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC19 (rtx *operands, enum machine_mode mode)
{
  rtx neglab, donelab, i0, i1, f0, in, out, limit;

  out = operands[0];
  in = FUNC9 (mode, operands[1]);
  neglab = FUNC12 ();
  donelab = FUNC12 ();
  i0 = FUNC14 (DImode);
  i1 = FUNC14 (DImode);
  limit = FUNC14 (mode);
  f0 = FUNC14 (mode);

  FUNC8 (limit,
		  FUNC0 (
		    FUNC2 ("9223372036854775808.0", mode), mode));
  FUNC4 (in, limit, GE, NULL_RTX, mode, 0, neglab);

  FUNC5 (FUNC17 (VOIDmode,
			  out,
			  FUNC15 (DImode, FUNC15 (mode, in))));
  FUNC6 (FUNC11 (donelab));
  FUNC3 ();

  FUNC7 (neglab);

  FUNC5 (FUNC17 (VOIDmode, f0, FUNC16 (mode, in, limit)));
  FUNC5 (FUNC17 (VOIDmode,
			  i0,
			  FUNC15 (DImode, FUNC15 (mode, f0))));
  FUNC5 (FUNC13 (i1, const1_rtx));
  FUNC5 (FUNC10 (i1, i1, FUNC1 (63)));
  FUNC5 (FUNC18 (out, i0, i1));

  FUNC7 (donelab);
}