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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LT ; 
#define  V4HImode 129 
#define  V8QImode 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC14 (rtx operands[3], bool unsignedp)
{
  rtx l, h, x, s;
  enum machine_mode wmode, mode;
  rtx (*unpack_l) (rtx, rtx, rtx);
  rtx (*unpack_h) (rtx, rtx, rtx);
  rtx (*plus) (rtx, rtx, rtx);

  wmode = FUNC1 (operands[0]);
  mode = FUNC1 (operands[1]);

  switch (mode)
    {
    case V8QImode:
      unpack_l = gen_unpack1_l;
      unpack_h = gen_unpack1_h;
      plus = gen_addv4hi3;
      break;
    case V4HImode:
      unpack_l = gen_unpack2_l;
      unpack_h = gen_unpack2_h;
      plus = gen_addv2si3;
      break;
    default:
      FUNC4 ();
    }

  /* Fill in x with the sign extension of each element in op1.  */
  if (unsignedp)
    x = FUNC0 (mode);
  else
    {
      bool neg;

      x = FUNC8 (mode);

      neg = FUNC13 (LT, mode, x, operands[1],
					FUNC0 (mode));
      FUNC3 (!neg);
    }

  l = FUNC8 (wmode);
  h = FUNC8 (wmode);
  s = FUNC8 (wmode);

  FUNC2 (unpack_l (FUNC7 (mode, l), operands[1], x));
  FUNC2 (unpack_h (FUNC7 (mode, h), operands[1], x));
  FUNC2 (plus (s, l, operands[2]));
  FUNC2 (plus (operands[0], h, s));
}