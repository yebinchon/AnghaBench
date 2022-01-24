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
 scalar_t__ FUNC0 (int) ; 
 int DFmode ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ LO_SUM ; 
 scalar_t__ MEM ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLUS ; 
 scalar_t__ PRE_DEC ; 
 scalar_t__ PRE_INC ; 
 int /*<<< orphan*/  Pmode ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_32BIT ; 
 scalar_t__ TARGET_E500_DOUBLE ; 
 scalar_t__ TARGET_POWERPC64 ; 
 scalar_t__ TARGET_UPDATE ; 
 int TFmode ; 
 int V16QImode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int** hard_regno_nregs ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,int /*<<< orphan*/ ,int,int) ; 
 int word_mode ; 

void
FUNC23 (rtx dst, rtx src)
{
  /* The register number of the first register being moved.  */
  int reg;
  /* The mode that is to be moved.  */
  enum machine_mode mode;
  /* The mode that the move is being done in, and its size.  */
  enum machine_mode reg_mode;
  int reg_mode_size;
  /* The number of registers that will be moved.  */
  int nregs;

  reg = FUNC9 (dst) ? FUNC8 (dst) : FUNC8 (src);
  mode = FUNC4 (dst);
  nregs = hard_regno_nregs[reg][mode];
  if (FUNC1 (reg))
    reg_mode = DFmode;
  else if (FUNC0 (reg))
    reg_mode = V16QImode;
  else if (TARGET_E500_DOUBLE && mode == TFmode)
    reg_mode = DFmode;
  else
    reg_mode = word_mode;
  reg_mode_size = FUNC5 (reg_mode);

  FUNC12 (reg_mode_size * nregs == FUNC5 (mode));

  if (FUNC9 (src) && FUNC9 (dst) && (FUNC8 (src) < FUNC8 (dst)))
    {
      /* Move register range backwards, if we might have destructive
	 overlap.  */
      int i;
      for (i = nregs - 1; i >= 0; i--)
	FUNC11 (FUNC19 (VOIDmode,
				FUNC22 (reg_mode, dst, mode,
						     i * reg_mode_size),
				FUNC22 (reg_mode, src, mode,
						     i * reg_mode_size)));
    }
  else
    {
      int i;
      int j = -1;
      bool used_update = false;

      if (FUNC7 (src) && FUNC6 (reg))
	{
	  rtx breg;

	  if (FUNC3 (FUNC10 (src, 0)) == PRE_INC
	      || FUNC3 (FUNC10 (src, 0)) == PRE_DEC)
	    {
	      rtx delta_rtx;
	      breg = FUNC10 (FUNC10 (src, 0), 0);
	      delta_rtx = (FUNC3 (FUNC10 (src, 0)) == PRE_INC
			   ? FUNC2 (FUNC5 (FUNC4 (src)))
			   : FUNC2 (-FUNC5 (FUNC4 (src))));
	      FUNC11 (TARGET_32BIT
			 ? FUNC14 (breg, breg, delta_rtx)
			 : FUNC13 (breg, breg, delta_rtx));
	      src = FUNC20 (src, breg);
	    }
	  else if (! FUNC21 (src))
	    {
	      rtx basereg;
	      basereg = FUNC18 (Pmode, reg);
	      FUNC11 (FUNC19 (VOIDmode, basereg, FUNC10 (src, 0)));
	      src = FUNC20 (src, basereg);
	    }

	  breg = FUNC10 (src, 0);
	  if (FUNC3 (breg) == PLUS || FUNC3 (breg) == LO_SUM)
	    breg = FUNC10 (breg, 0);

	  /* If the base register we are using to address memory is
	     also a destination reg, then change that register last.  */
	  if (FUNC9 (breg)
	      && FUNC8 (breg) >= FUNC8 (dst)
	      && FUNC8 (breg) < FUNC8 (dst) + nregs)
	    j = FUNC8 (breg) - FUNC8 (dst);
	}

      if (FUNC3 (dst) == MEM && FUNC6 (reg))
	{
	  rtx breg;

	  if (FUNC3 (FUNC10 (dst, 0)) == PRE_INC
	      || FUNC3 (FUNC10 (dst, 0)) == PRE_DEC)
	    {
	      rtx delta_rtx;
	      breg = FUNC10 (FUNC10 (dst, 0), 0);
	      delta_rtx = (FUNC3 (FUNC10 (dst, 0)) == PRE_INC
			   ? FUNC2 (FUNC5 (FUNC4 (dst)))
			   : FUNC2 (-FUNC5 (FUNC4 (dst))));

	      /* We have to update the breg before doing the store.
		 Use store with update, if available.  */

	      if (TARGET_UPDATE)
		{
		  rtx nsrc = FUNC22 (reg_mode, src, mode, 0);
		  FUNC11 (TARGET_32BIT
			     ? (TARGET_POWERPC64
				? FUNC16 (breg, breg, delta_rtx, nsrc)
				: FUNC17 (breg, breg, delta_rtx, nsrc))
			     : FUNC15 (breg, breg, delta_rtx, nsrc));
		  used_update = true;
		}
	      else
		FUNC11 (TARGET_32BIT
			   ? FUNC14 (breg, breg, delta_rtx)
			   : FUNC13 (breg, breg, delta_rtx));
	      dst = FUNC20 (dst, breg);
	    }
	  else
	    FUNC12 (FUNC21 (dst));
	}

      for (i = 0; i < nregs; i++)
	{
	  /* Calculate index to next subword.  */
	  ++j;
	  if (j == nregs)
	    j = 0;

	  /* If compiler already emitted move of first word by
	     store with update, no need to do anything.  */
	  if (j == 0 && used_update)
	    continue;

	  FUNC11 (FUNC19 (VOIDmode,
				  FUNC22 (reg_mode, dst, mode,
						       j * reg_mode_size),
				  FUNC22 (reg_mode, src, mode,
						       j * reg_mode_size)));
	}
    }
}