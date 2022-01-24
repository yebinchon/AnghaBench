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
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int const SFmode ; 
 int /*<<< orphan*/  TARGET_3DNOW_A ; 
 int /*<<< orphan*/  TARGET_SSE ; 
 int TARGET_SSE2 ; 
#define  V16QImode 137 
#define  V2DFmode 136 
#define  V2DImode 135 
#define  V2SFmode 134 
#define  V2SImode 133 
#define  V4HImode 132 
#define  V4SFmode 131 
#define  V4SImode 130 
#define  V8HImode 129 
#define  V8QImode 128 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  const2_rtx ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC23 (bool mmx_ok, rtx target, rtx val, int elt)
{
  enum machine_mode mode = FUNC1 (target);
  enum machine_mode inner_mode = FUNC2 (mode);
  bool use_vec_merge = false;
  rtx tmp;

  switch (mode)
    {
    case V2SFmode:
    case V2SImode:
      if (mmx_ok)
	{
	  tmp = FUNC11 (FUNC2 (mode));
	  FUNC22 (true, tmp, target, 1 - elt);
	  if (elt == 0)
	    tmp = FUNC15 (mode, tmp, val);
	  else
	    tmp = FUNC15 (mode, val, tmp);
	  FUNC7 (FUNC14 (VOIDmode, target, tmp));
	  return;
	}
      break;

    case V2DFmode:
    case V2DImode:
      {
	rtx op0, op1;

	/* For the two element vectors, we implement a VEC_CONCAT with
	   the extraction of the other element.  */

	tmp = FUNC13 (VOIDmode, FUNC12 (1, FUNC0 (1 - elt)));
	tmp = FUNC18 (inner_mode, target, tmp);

	if (elt == 0)
	  op0 = val, op1 = tmp;
	else
	  op0 = tmp, op1 = val;

	tmp = FUNC15 (mode, op0, op1);
	FUNC7 (FUNC14 (VOIDmode, target, tmp));
      }
      return;

    case V4SFmode:
      switch (elt)
	{
	case 0:
	  use_vec_merge = true;
	  break;

	case 1:
	  /* tmp = target = A B C D */
	  tmp = FUNC6 (target);
	  /* target = A A B B */
	  FUNC7 (FUNC21 (target, target, target));
	  /* target = X A B B */
	  FUNC23 (false, target, val, 0);
	  /* target = A X C D  */
	  FUNC7 (FUNC20 (target, target, tmp,
				       FUNC0 (1), FUNC0 (0),
				       FUNC0 (2+4), FUNC0 (3+4)));
	  return;

	case 2:
	  /* tmp = target = A B C D */
	  tmp = FUNC6 (target);
	  /* tmp = X B C D */
	  FUNC23 (false, tmp, val, 0);
	  /* target = A B X D */
	  FUNC7 (FUNC20 (target, target, tmp,
				       FUNC0 (0), FUNC0 (1),
				       FUNC0 (0+4), FUNC0 (3+4)));
	  return;

	case 3:
	  /* tmp = target = A B C D */
	  tmp = FUNC6 (target);
	  /* tmp = X B C D */
	  FUNC23 (false, tmp, val, 0);
	  /* target = A B X D */
	  FUNC7 (FUNC20 (target, target, tmp,
				       FUNC0 (0), FUNC0 (1),
				       FUNC0 (2+4), FUNC0 (0+4)));
	  return;

	default:
	  FUNC9 ();
	}
      break;

    case V4SImode:
      /* Element 0 handled by vec_merge below.  */
      if (elt == 0)
	{
	  use_vec_merge = true;
	  break;
	}

      if (TARGET_SSE2)
	{
	  /* With SSE2, use integer shuffles to swap element 0 and ELT,
	     store into element 0, then shuffle them back.  */

	  rtx order[4];

	  order[0] = FUNC0 (elt);
	  order[1] = const1_rtx;
	  order[2] = const2_rtx;
	  order[3] = FUNC0 (3);
	  order[elt] = const0_rtx;

	  FUNC7 (FUNC19 (target, target, order[0],
					order[1], order[2], order[3]));

	  FUNC23 (false, target, val, 0);

	  FUNC7 (FUNC19 (target, target, order[0],
					order[1], order[2], order[3]));
	}
      else
	{
	  /* For SSE1, we have to reuse the V4SF code.  */
	  FUNC23 (false, FUNC10 (V4SFmode, target),
				  FUNC10 (SFmode, val), elt);
	}
      return;

    case V8HImode:
      use_vec_merge = TARGET_SSE2;
      break;
    case V4HImode:
      use_vec_merge = mmx_ok && (TARGET_SSE || TARGET_3DNOW_A);
      break;

    case V16QImode:
    case V8QImode:
    default:
      break;
    }

  if (use_vec_merge)
    {
      tmp = FUNC16 (mode, val);
      tmp = FUNC17 (mode, tmp, target, FUNC0 (1 << elt));
      FUNC7 (FUNC14 (VOIDmode, target, tmp));
    }
  else
    {
      rtx mem = FUNC5 (mode, FUNC3 (mode), false);

      FUNC8 (mem, target);

      tmp = FUNC4 (mem, inner_mode, elt*FUNC3 (inner_mode));
      FUNC8 (tmp, val);

      FUNC8 (target, mem);
    }
}