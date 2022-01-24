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
 int /*<<< orphan*/  ASHIFT ; 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int HImode ; 
 int /*<<< orphan*/  IOR ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 int QImode ; 
 int SImode ; 
 int /*<<< orphan*/  TARGET_3DNOW_A ; 
 int /*<<< orphan*/  TARGET_SSE ; 
 int /*<<< orphan*/  TARGET_SSE2 ; 
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
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC19 (bool mmx_ok, enum machine_mode mode,
				   rtx target, rtx val)
{
  enum machine_mode smode, wsmode, wvmode;
  rtx x;

  switch (mode)
    {
    case V2SImode:
    case V2SFmode:
      if (!mmx_ok)
	return false;
      /* FALLTHRU */

    case V2DFmode:
    case V2DImode:
    case V4SFmode:
    case V4SImode:
      val = FUNC8 (FUNC3 (mode), val);
      x = FUNC14 (mode, val);
      FUNC5 (FUNC12 (VOIDmode, target, x));
      return true;

    case V4HImode:
      if (!mmx_ok)
	return false;
      if (TARGET_SSE || TARGET_3DNOW_A)
	{
	  val = FUNC10 (SImode, val);
	  x = FUNC13 (HImode, val);
	  x = FUNC14 (mode, x);
	  FUNC5 (FUNC12 (VOIDmode, target, x));
	  return true;
	}
      else
	{
	  smode = HImode;
	  wsmode = SImode;
	  wvmode = V2SImode;
	  goto widen;
	}

    case V8QImode:
      if (!mmx_ok)
	return false;
      smode = QImode;
      wsmode = HImode;
      wvmode = V4HImode;
      goto widen;
    case V8HImode:
      if (TARGET_SSE2)
	{
	  rtx tmp1, tmp2;
	  /* Extend HImode to SImode using a paradoxical SUBREG.  */
	  tmp1 = FUNC11 (SImode);
	  FUNC6 (tmp1, FUNC10 (SImode, val));
	  /* Insert the SImode value as low element of V4SImode vector. */
	  tmp2 = FUNC11 (V4SImode);
	  tmp1 = FUNC15 (V4SImode,
				    FUNC14 (V4SImode, tmp1),
				    FUNC0 (V4SImode),
				    const1_rtx);
	  FUNC5 (FUNC12 (VOIDmode, tmp2, tmp1));
	  /* Cast the V4SImode vector back to a V8HImode vector.  */
	  tmp1 = FUNC11 (V8HImode);
	  FUNC6 (tmp1, FUNC10 (V8HImode, tmp2));
	  /* Duplicate the low short through the whole low SImode word.  */
	  FUNC5 (FUNC18 (tmp1, tmp1, tmp1));
	  /* Cast the V8HImode vector back to a V4SImode vector.  */
	  tmp2 = FUNC11 (V4SImode);
	  FUNC6 (tmp2, FUNC10 (V4SImode, tmp1));
	  /* Replicate the low element of the V4SImode vector.  */
	  FUNC5 (FUNC16 (tmp2, tmp2, const0_rtx));
	  /* Cast the V2SImode back to V8HImode, and store in target.  */
	  FUNC6 (target, FUNC10 (V8HImode, tmp2));
	  return true;
	}
      smode = HImode;
      wsmode = SImode;
      wvmode = V4SImode;
      goto widen;
    case V16QImode:
      if (TARGET_SSE2)
	{
	  rtx tmp1, tmp2;
	  /* Extend QImode to SImode using a paradoxical SUBREG.  */
	  tmp1 = FUNC11 (SImode);
	  FUNC6 (tmp1, FUNC10 (SImode, val));
	  /* Insert the SImode value as low element of V4SImode vector. */
	  tmp2 = FUNC11 (V4SImode);
	  tmp1 = FUNC15 (V4SImode,
				    FUNC14 (V4SImode, tmp1),
				    FUNC0 (V4SImode),
				    const1_rtx);
	  FUNC5 (FUNC12 (VOIDmode, tmp2, tmp1));
	  /* Cast the V4SImode vector back to a V16QImode vector.  */
	  tmp1 = FUNC11 (V16QImode);
	  FUNC6 (tmp1, FUNC10 (V16QImode, tmp2));
	  /* Duplicate the low byte through the whole low SImode word.  */
	  FUNC5 (FUNC17 (tmp1, tmp1, tmp1));
	  FUNC5 (FUNC17 (tmp1, tmp1, tmp1));
	  /* Cast the V16QImode vector back to a V4SImode vector.  */
	  tmp2 = FUNC11 (V4SImode);
	  FUNC6 (tmp2, FUNC10 (V4SImode, tmp1));
	  /* Replicate the low element of the V4SImode vector.  */
	  FUNC5 (FUNC16 (tmp2, tmp2, const0_rtx));
	  /* Cast the V2SImode back to V16QImode, and store in target.  */
	  FUNC6 (target, FUNC10 (V16QImode, tmp2));
	  return true;
	}
      smode = QImode;
      wsmode = HImode;
      wvmode = V8HImode;
      goto widen;
    widen:
      /* Replicate the value once into the next wider mode and recurse.  */
      val = FUNC4 (wsmode, smode, val, true);
      x = FUNC7 (wsmode, ASHIFT, val,
			       FUNC1 (FUNC2 (smode)),
			       NULL_RTX, 1, OPTAB_LIB_WIDEN);
      val = FUNC7 (wsmode, IOR, val, x, x, 1, OPTAB_LIB_WIDEN);

      x = FUNC11 (wvmode);
      if (!FUNC19 (mmx_ok, wvmode, x, val))
	FUNC9 ();
      FUNC6 (target, FUNC10 (mode, x));
      return true;

    default:
      return false;
    }
}