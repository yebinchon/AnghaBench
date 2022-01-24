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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MODE_INT ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  add_optab ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ptr_mode ; 
 int /*<<< orphan*/  virtual_outgoing_args_rtx ; 

rtx
FUNC14 (rtx size, int extra, int below)
{
  rtx temp;

  size = FUNC7 (Pmode, ptr_mode, size, 1);
  if (FUNC0 (size))
    FUNC6 (FUNC13 (size, extra));
  else if (FUNC5 (size) && extra == 0)
    FUNC6 (size);
  else
    {
      temp = FUNC8 (Pmode, size);
      if (extra != 0)
	temp = FUNC9 (Pmode, add_optab, temp, FUNC1 (extra),
			     temp, 0, OPTAB_LIB_WIDEN);
      FUNC6 (temp);
    }

#ifndef STACK_GROWS_DOWNWARD
  if (0)
#else
  if (1)
#endif
    {
      temp = virtual_outgoing_args_rtx;
      if (extra != 0 && below)
	temp = FUNC13 (temp, extra);
    }
  else
    {
      if (FUNC3 (size) == CONST_INT)
	temp = FUNC13 (virtual_outgoing_args_rtx,
			      -FUNC4 (size) - (below ? 0 : extra));
      else if (extra != 0 && !below)
	temp = FUNC10 (Pmode, virtual_outgoing_args_rtx,
			     FUNC12 (Pmode, FUNC13 (size, extra)));
      else
	temp = FUNC10 (Pmode, virtual_outgoing_args_rtx,
			     FUNC12 (Pmode, size));
    }

  return FUNC11 (FUNC2 (MODE_INT), temp);
}