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
 int HImode ; 
 int const SFmode ; 
 int const SImode ; 
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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC20 (bool mmx_ok, rtx target, rtx vec, int elt)
{
  enum machine_mode mode = FUNC1 (vec);
  enum machine_mode inner_mode = FUNC2 (mode);
  bool use_vec_extr = false;
  rtx tmp;

  switch (mode)
    {
    case V2SImode:
    case V2SFmode:
      if (!mmx_ok)
	break;
      /* FALLTHRU */

    case V2DFmode:
    case V2DImode:
      use_vec_extr = true;
      break;

    case V4SFmode:
      switch (elt)
	{
	case 0:
	  tmp = vec;
	  break;

	case 1:
	case 3:
	  tmp = FUNC10 (mode);
	  FUNC6 (FUNC18 (tmp, vec, vec,
				       FUNC0 (elt), FUNC0 (elt),
				       FUNC0 (elt+4), FUNC0 (elt+4)));
	  break;

	case 2:
	  tmp = FUNC10 (mode);
	  FUNC6 (FUNC19 (tmp, vec, vec));
	  break;

	default:
	  FUNC8 ();
	}
      vec = tmp;
      use_vec_extr = true;
      elt = 0;
      break;

    case V4SImode:
      if (TARGET_SSE2)
	{
	  switch (elt)
	    {
	    case 0:
	      tmp = vec;
	      break;

	    case 1:
	    case 3:
	      tmp = FUNC10 (mode);
	      FUNC6 (FUNC16 (tmp, vec,
					    FUNC0 (elt), FUNC0 (elt),
					    FUNC0 (elt), FUNC0 (elt)));
	      break;

	    case 2:
	      tmp = FUNC10 (mode);
	      FUNC6 (FUNC17 (tmp, vec, vec));
	      break;

	    default:
	      FUNC8 ();
	    }
	  vec = tmp;
	  use_vec_extr = true;
	  elt = 0;
	}
      else
	{
	  /* For SSE1, we have to reuse the V4SF code.  */
	  FUNC20 (false, FUNC9 (SFmode, target),
				      FUNC9 (V4SFmode, vec), elt);
	  return;
	}
      break;

    case V8HImode:
      use_vec_extr = TARGET_SSE2;
      break;
    case V4HImode:
      use_vec_extr = mmx_ok && (TARGET_SSE || TARGET_3DNOW_A);
      break;

    case V16QImode:
    case V8QImode:
      /* ??? Could extract the appropriate HImode element and shift.  */
    default:
      break;
    }

  if (use_vec_extr)
    {
      tmp = FUNC12 (VOIDmode, FUNC11 (1, FUNC0 (elt)));
      tmp = FUNC14 (inner_mode, vec, tmp);

      /* Let the rtl optimizers know about the zero extension performed.  */
      if (inner_mode == HImode)
	{
	  tmp = FUNC15 (SImode, tmp);
	  target = FUNC9 (SImode, target);
	}

      FUNC6 (FUNC13 (VOIDmode, target, tmp));
    }
  else
    {
      rtx mem = FUNC5 (mode, FUNC3 (mode), false);

      FUNC7 (mem, vec);

      tmp = FUNC4 (mem, inner_mode, elt*FUNC3 (inner_mode));
      FUNC7 (target, tmp);
    }
}