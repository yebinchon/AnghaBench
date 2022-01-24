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
typedef  int /*<<< orphan*/  rtvec ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ABS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CONST_DOUBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int DFmode ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int SFmode ; 
 int V2DFmode ; 
 int V4SFmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

void
FUNC15 (rtx operands[])
{
  enum machine_mode mode, vmode;
  rtx dest, op0, op1, mask, nmask;

  dest = operands[0];
  op0 = operands[1];
  op1 = operands[2];

  mode = FUNC3 (dest);
  vmode = mode == SFmode ? V4SFmode : V2DFmode;

  if (FUNC2 (op0) == CONST_DOUBLE)
    {
      rtvec v;

      if (FUNC13 (FUNC1 (op0)))
	op0 = FUNC14 (ABS, mode, op0, mode);

      if (op0 == FUNC0 (mode))
	op0 = FUNC0 (vmode);
      else
        {
	  if (mode == SFmode)
	    v = FUNC10 (4, op0, FUNC0 (SFmode),
                           FUNC0 (SFmode), FUNC0 (SFmode));
	  else
	    v = FUNC10 (2, op0, FUNC0 (DFmode));
          op0 = FUNC5 (vmode, FUNC11 (vmode, v));
	}

      mask = FUNC12 (mode, 0, 0);

      if (mode == SFmode)
	FUNC4 (FUNC8 (dest, op0, op1, mask));
      else
	FUNC4 (FUNC6 (dest, op0, op1, mask));
    }
  else
    {
      nmask = FUNC12 (mode, 0, 1);
      mask = FUNC12 (mode, 0, 0);

      if (mode == SFmode)
	FUNC4 (FUNC9 (dest, NULL, op0, op1, nmask, mask));
      else
	FUNC4 (FUNC7 (dest, NULL, op0, op1, nmask, mask));
    }
}