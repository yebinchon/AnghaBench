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
 int /*<<< orphan*/  FIRST_PSEUDO_REGISTER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SImode ; 
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
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC18 (bool mmx_ok, enum machine_mode mode,
				     rtx target, rtx var, int one_var)
{
  enum machine_mode vsimode;
  rtx new_target;
  rtx x, tmp;

  switch (mode)
    {
    case V2SFmode:
    case V2SImode:
      if (!mmx_ok)
	return false;
      /* FALLTHRU */

    case V2DFmode:
    case V2DImode:
      if (one_var != 0)
	return false;
      var = FUNC8 (FUNC2 (mode), var);
      x = FUNC13 (mode, var, FUNC0 (FUNC2 (mode)));
      FUNC6 (FUNC12 (VOIDmode, target, x));
      return true;

    case V4SFmode:
    case V4SImode:
      if (!FUNC4 (target) || FUNC3 (target) < FIRST_PSEUDO_REGISTER)
	new_target = FUNC11 (mode);
      else
	new_target = target;
      var = FUNC8 (FUNC2 (mode), var);
      x = FUNC14 (mode, var);
      x = FUNC15 (mode, x, FUNC0 (mode), const1_rtx);
      FUNC6 (FUNC12 (VOIDmode, new_target, x));
      if (one_var != 0)
	{
	  /* We need to shuffle the value to the correct position, so
	     create a new pseudo to store the intermediate result.  */

	  /* With SSE2, we can use the integer shuffle insns.  */
	  if (mode != V4SFmode && TARGET_SSE2)
	    {
	      FUNC6 (FUNC16 (new_target, new_target,
					    FUNC1 (1),
					    FUNC1 (one_var == 1 ? 0 : 1),
					    FUNC1 (one_var == 2 ? 0 : 1),
					    FUNC1 (one_var == 3 ? 0 : 1)));
	      if (target != new_target)
		FUNC7 (target, new_target);
	      return true;
	    }

	  /* Otherwise convert the intermediate result to V4SFmode and
	     use the SSE1 shuffle instructions.  */
	  if (mode != V4SFmode)
	    {
	      tmp = FUNC11 (V4SFmode);
	      FUNC7 (tmp, FUNC10 (V4SFmode, new_target));
	    }
	  else
	    tmp = new_target;

	  FUNC6 (FUNC17 (tmp, tmp, tmp,
				       FUNC1 (1),
				       FUNC1 (one_var == 1 ? 0 : 1),
				       FUNC1 (one_var == 2 ? 0+4 : 1+4),
				       FUNC1 (one_var == 3 ? 0+4 : 1+4)));

	  if (mode != V4SFmode)
	    FUNC7 (target, FUNC10 (V4SImode, tmp));
	  else if (tmp != target)
	    FUNC7 (target, tmp);
	}
      else if (target != new_target)
	FUNC7 (target, new_target);
      return true;

    case V8HImode:
    case V16QImode:
      vsimode = V4SImode;
      goto widen;
    case V4HImode:
    case V8QImode:
      if (!mmx_ok)
	return false;
      vsimode = V2SImode;
      goto widen;
    widen:
      if (one_var != 0)
	return false;

      /* Zero extend the variable element to SImode and recurse.  */
      var = FUNC5 (SImode, FUNC2 (mode), var, true);

      x = FUNC11 (vsimode);
      if (!FUNC18 (mmx_ok, vsimode, x,
						var, one_var))
	FUNC9 ();

      FUNC7 (target, FUNC10 (mode, x));
      return true;

    default:
      return false;
    }
}