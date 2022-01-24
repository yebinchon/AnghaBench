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
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC10 (int,int,scalar_t__,scalar_t__,scalar_t__) ; 

void
FUNC11 (rtx operands[])
{
  enum machine_mode mode = FUNC2 (operands[0]);
  enum rtx_code code = FUNC1 (operands[3]);
  bool negate;
  rtx cmp, x, ot, of;

  cmp = FUNC5 (mode);
  negate = FUNC10 (code, mode, cmp,
				       operands[4], operands[5]);

  ot = operands[1+negate];
  of = operands[2-negate];

  if (ot == FUNC0 (mode))
    {
      if (of == FUNC0 (mode))
	{
	  FUNC4 (operands[0], ot);
	  return;
	}

      x = FUNC8 (mode, cmp);
      x = FUNC6 (mode, x, of);
      FUNC3 (FUNC9 (VOIDmode, operands[0], x));
    }
  else if (of == FUNC0 (mode))
    {
      x = FUNC6 (mode, cmp, ot);
      FUNC3 (FUNC9 (VOIDmode, operands[0], x));
    }
  else
    {
      rtx t, f;

      t = FUNC5 (mode);
      x = FUNC6 (mode, cmp, operands[1+negate]);
      FUNC3 (FUNC9 (VOIDmode, t, x));

      f = FUNC5 (mode);
      x = FUNC8 (mode, cmp);
      x = FUNC6 (mode, x, operands[2-negate]);
      FUNC3 (FUNC9 (VOIDmode, f, x));

      x = FUNC7 (mode, t, f);
      FUNC3 (FUNC9 (VOIDmode, operands[0], x));
    }
}