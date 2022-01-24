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
typedef  int /*<<< orphan*/  rtvec ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
#define  AND 132 
 scalar_t__ BYTES_BIG_ENDIAN ; 
 int CCmode ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int HImode ; 
#define  IOR 131 
 int FUNC4 (scalar_t__) ; 
#define  MINUS 130 
 scalar_t__ NOT ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
#define  PLUS 129 
 int Pmode ; 
 int QImode ; 
 int SImode ; 
 int /*<<< orphan*/  UNSPEC_SYNC_OP ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
#define  XOR 128 
 int /*<<< orphan*/  and_optab ; 
 scalar_t__ FUNC6 (scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int,scalar_t__,...) ; 
 scalar_t__ FUNC22 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC25 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC26 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC31 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC33 (int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC34 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ior_optab ; 
 scalar_t__ FUNC35 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__,int) ; 
 scalar_t__ FUNC37 (int,int,scalar_t__,scalar_t__) ; 

void
FUNC38 (enum rtx_code code, enum machine_mode mode,
		  rtx m, rtx op, rtx before_param, rtx after_param,
		  bool sync_p)
{
  enum machine_mode used_mode;
  rtx the_op, set_before, set_after, set_atomic, cc_scratch, before, after;
  rtx used_m;
  rtvec vec;
  HOST_WIDE_INT imask = FUNC3 (mode);
  rtx shift = NULL_RTX;

  if (sync_p)
    FUNC8 (FUNC17 ());

  if (FUNC1 (m) == NOT)
    used_m = FUNC5 (m, 0);
  else
    used_m = m;

  /* If this is smaller than SImode, we'll have to use SImode with
     adjustments.  */
  if (mode == QImode || mode == HImode)
    {
      rtx newop, oldop;

      if (FUNC4 (used_m) >= 32)
	{
	  int ishift = 0;
	  if (BYTES_BIG_ENDIAN)
	    ishift = FUNC2 (SImode) - FUNC2 (mode);

	  shift = FUNC0 (ishift);
	}
      else
	{
	  rtx addrSI, aligned_addr;
	  int shift_mask = mode == QImode ? 0x18 : 0x10;

	  addrSI = FUNC11 (SImode, FUNC15 (SImode,
							  FUNC5 (used_m, 0)));
	  shift = FUNC18 (SImode);

	  FUNC8 (FUNC19 (shift, addrSI, FUNC0 (3),
				 FUNC0 (shift_mask)));
	  FUNC8 (FUNC34 (shift, shift, FUNC0 (shift_mask)));

	  aligned_addr = FUNC10 (Pmode, and_optab,
				       FUNC5 (used_m, 0),
				       FUNC0 (-4), NULL_RTX,
				       1, OPTAB_LIB_WIDEN);
	  used_m = FUNC6 (used_m, SImode, aligned_addr);
	  FUNC36 (used_m, 32);
	  /* It's safe to keep the old alias set of USED_M, because
	     the operation is atomic and only affects the original
	     USED_M.  */
	  if (FUNC1 (m) == NOT)
	    m = FUNC26 (SImode, used_m);
	  else
	    m = used_m;
	}

      if (FUNC1 (op) == NOT)
	{
	  oldop = FUNC35 (SImode, FUNC5 (op, 0), mode);
	  oldop = FUNC26 (SImode, oldop);
	}
      else
	oldop = FUNC35 (SImode, op, mode);

      switch (code)
	{
	case IOR:
	case XOR:
	  newop = FUNC10 (SImode, and_optab,
				oldop, FUNC0 (imask), NULL_RTX,
				1, OPTAB_LIB_WIDEN);
	  FUNC8 (FUNC13 (newop, newop, shift));
	  break;

	case AND:
	  newop = FUNC10 (SImode, ior_optab,
				oldop, FUNC0 (~imask), NULL_RTX,
				1, OPTAB_LIB_WIDEN);
	  FUNC8 (FUNC20 (newop, newop, shift));
	  break;

	case PLUS:
	case MINUS:
	  {
	    rtx mask;

	    newop = FUNC10 (SImode, and_optab,
				  oldop, FUNC0 (imask), NULL_RTX,
				  1, OPTAB_LIB_WIDEN);
	    FUNC8 (FUNC13 (newop, newop, shift));

	    mask = FUNC18 (SImode);
	    FUNC9 (mask, FUNC0 (imask));
	    FUNC8 (FUNC13 (mask, mask, shift));

	    if (code == PLUS)
	      newop = FUNC28 (SImode, m, newop);
	    else
	      newop = FUNC25 (SImode, m, newop);
	    newop = FUNC22 (SImode, newop, mask);
	    newop = FUNC24 (SImode, newop,
				 FUNC22 (SImode,
					      FUNC26 (SImode, mask),
					      m));
	    break;
	  }

	default:
	  FUNC12 ();
	}

      if (FUNC1 (m) == NOT)
	{
	  rtx mask, xorm;

	  mask = FUNC18 (SImode);
	  FUNC9 (mask, FUNC0 (imask));
	  FUNC8 (FUNC13 (mask, mask, shift));

	  xorm = FUNC32 (SImode, used_m, mask);
	  /* Depending on the value of 'op', the XOR or the operation might
	     be able to be simplified away.  */
	  newop = FUNC37 (code, SImode, xorm, newop);
	}
      op = newop;
      used_mode = SImode;
      before = FUNC18 (used_mode);
      after = FUNC18 (used_mode);
    }
  else
    {
      used_mode = mode;
      before = before_param;
      after = after_param;

      if (before == NULL_RTX)
	before = FUNC18 (used_mode);
      if (after == NULL_RTX)
	after = FUNC18 (used_mode);
    }

  if ((code == PLUS || code == MINUS || FUNC1 (m) == NOT)
      && used_mode != mode)
    the_op = op;  /* Computed above.  */
  else if (FUNC1 (op) == NOT && FUNC1 (m) != NOT)
    the_op = FUNC33 (code, used_mode, op, m);
  else
    the_op = FUNC33 (code, used_mode, m, op);

  set_after = FUNC30 (VOIDmode, after, the_op);
  set_before = FUNC30 (VOIDmode, before, used_m);
  set_atomic = FUNC30 (VOIDmode, used_m,
			    FUNC31 (used_mode,
					    FUNC21 (1, the_op),
					    UNSPEC_SYNC_OP));
  cc_scratch = FUNC23 (VOIDmode, FUNC29 (CCmode));

  if ((code == PLUS || code == MINUS) && used_mode != mode)
    vec = FUNC21 (5, set_after, set_before, set_atomic, cc_scratch,
		     FUNC23 (VOIDmode, FUNC29 (SImode)));
  else
    vec = FUNC21 (4, set_after, set_before, set_atomic, cc_scratch);
  FUNC8 (FUNC27 (VOIDmode, vec));

  /* Shift and mask the return values properly.  */
  if (used_mode != mode && before_param)
    {
      FUNC8 (FUNC16 (before, before, shift));
      FUNC7 (before_param, before, 1);
    }

  if (used_mode != mode && after_param)
    {
      FUNC8 (FUNC16 (after, after, shift));
      FUNC7 (after_param, after, 1);
    }

  /* The previous sequence will end with a branch that's dependent on
     the conditional store, so placing an isync will ensure that no
     other instructions (especially, no load or store instructions)
     can start before the atomic operation completes.  */
  if (sync_p)
    FUNC8 (FUNC14 ());
}