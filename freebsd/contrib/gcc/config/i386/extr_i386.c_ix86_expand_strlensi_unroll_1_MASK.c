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
typedef  int /*<<< orphan*/  JUMP_LABEL ;

/* Variables and functions */
 int /*<<< orphan*/  CCNOmode ; 
 int /*<<< orphan*/  CCmode ; 
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  EQ ; 
 int FLAGS_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GTU ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_WIDEN ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  QImode ; 
 int /*<<< orphan*/  SImode ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ TARGET_CMOVE ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  and_optab ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  const2_rtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pc_rtx ; 

__attribute__((used)) static void
FUNC31 (rtx out, rtx src, rtx align_rtx)
{
  int align;
  rtx tmp;
  rtx align_2_label = NULL_RTX;
  rtx align_3_label = NULL_RTX;
  rtx align_4_label = FUNC15 ();
  rtx end_0_label = FUNC15 ();
  rtx mem;
  rtx tmpreg = FUNC19 (SImode);
  rtx scratch = FUNC19 (SImode);
  rtx cmp;

  align = 0;
  if (FUNC1 (align_rtx) == CONST_INT)
    align = FUNC2 (align_rtx);

  /* Loop to check 1..3 bytes for null to get an aligned pointer.  */

  /* Is there a known alignment and is it less than 4?  */
  if (align < 4)
    {
      rtx scratch1 = FUNC19 (Pmode);
      FUNC8 (scratch1, out);
      /* Is there a known alignment and is it not 2? */
      if (align != 2)
	{
	  align_3_label = FUNC15 (); /* Label when aligned to 3-byte */
	  align_2_label = FUNC15 (); /* Label when aligned to 2-byte */

	  /* Leave just the 3 lower bits.  */
	  align_rtx = FUNC9 (Pmode, and_optab, scratch1, FUNC0 (3),
				    NULL_RTX, 0, OPTAB_WIDEN);

	  FUNC4 (align_rtx, const0_rtx, EQ, NULL,
				   Pmode, 1, align_4_label);
	  FUNC4 (align_rtx, const2_rtx, EQ, NULL,
				   Pmode, 1, align_2_label);
	  FUNC4 (align_rtx, const2_rtx, GTU, NULL,
				   Pmode, 1, align_3_label);
	}
      else
        {
	  /* Since the alignment is 2, we have to check 2 or 0 bytes;
	     check if is aligned to 4 - byte.  */

	  align_rtx = FUNC9 (Pmode, and_optab, scratch1, const2_rtx,
				    NULL_RTX, 0, OPTAB_WIDEN);

	  FUNC4 (align_rtx, const0_rtx, EQ, NULL,
				   Pmode, 1, align_4_label);
        }

      mem = FUNC3 (src, QImode, out);

      /* Now compare the bytes.  */

      /* Compare the first n unaligned byte on a byte per byte basis.  */
      FUNC4 (mem, const0_rtx, EQ, NULL,
			       QImode, 1, end_0_label);

      /* Increment the address.  */
      if (TARGET_64BIT)
	FUNC5 (FUNC10 (out, out, const1_rtx));
      else
	FUNC5 (FUNC12 (out, out, const1_rtx));

      /* Not needed with an alignment of 2 */
      if (align != 2)
	{
	  FUNC7 (align_2_label);

	  FUNC4 (mem, const0_rtx, EQ, NULL, QImode, 1,
				   end_0_label);

	  if (TARGET_64BIT)
	    FUNC5 (FUNC10 (out, out, const1_rtx));
	  else
	    FUNC5 (FUNC12 (out, out, const1_rtx));

	  FUNC7 (align_3_label);
	}

      FUNC4 (mem, const0_rtx, EQ, NULL, QImode, 1,
			       end_0_label);

      if (TARGET_64BIT)
	FUNC5 (FUNC10 (out, out, const1_rtx));
      else
	FUNC5 (FUNC12 (out, out, const1_rtx));
    }

  /* Generate loop to check 4 bytes at a time.  It is not a good idea to
     align this loop.  It gives only huge programs, but does not help to
     speed up.  */
  FUNC7 (align_4_label);

  mem = FUNC3 (src, SImode, out);
  FUNC8 (scratch, mem);
  if (TARGET_64BIT)
    FUNC5 (FUNC10 (out, out, FUNC0 (4)));
  else
    FUNC5 (FUNC12 (out, out, FUNC0 (4)));

  /* This formula yields a nonzero result iff one of the bytes is zero.
     This saves three branches inside loop and many cycles.  */

  FUNC5 (FUNC12 (tmpreg, scratch, FUNC0 (-0x01010101)));
  FUNC5 (FUNC18 (scratch, scratch));
  FUNC5 (FUNC13 (tmpreg, tmpreg, scratch));
  FUNC5 (FUNC13 (tmpreg, tmpreg,
			 FUNC14 (0x80808080, SImode)));
  FUNC4 (tmpreg, const0_rtx, EQ, 0, SImode, 1,
			   align_4_label);

  if (TARGET_CMOVE)
    {
       rtx reg = FUNC19 (SImode);
       rtx reg2 = FUNC19 (Pmode);
       FUNC8 (reg, tmpreg);
       FUNC5 (FUNC17 (reg, reg, FUNC0 (16)));

       /* If zero is not in the first two bytes, move two bytes forward.  */
       FUNC5 (FUNC30 (tmpreg, FUNC0 (0x8080)));
       tmp = FUNC26 (CCNOmode, FLAGS_REG);
       tmp = FUNC20 (VOIDmode, tmp, const0_rtx);
       FUNC5 (FUNC27 (VOIDmode, tmpreg,
			       FUNC21 (SImode, tmp,
						     reg,
						     tmpreg)));
       /* Emit lea manually to avoid clobbering of flags.  */
       FUNC5 (FUNC27 (SImode, reg2,
			       FUNC25 (Pmode, out, const2_rtx)));

       tmp = FUNC26 (CCNOmode, FLAGS_REG);
       tmp = FUNC20 (VOIDmode, tmp, const0_rtx);
       FUNC5 (FUNC27 (VOIDmode, out,
			       FUNC21 (Pmode, tmp,
						     reg2,
						     out)));

    }
  else
    {
       rtx end_2_label = FUNC15 ();
       /* Is zero in the first two bytes? */

       FUNC5 (FUNC30 (tmpreg, FUNC0 (0x8080)));
       tmp = FUNC26 (CCNOmode, FLAGS_REG);
       tmp = FUNC24 (VOIDmode, tmp, const0_rtx);
       tmp = FUNC21 (VOIDmode, tmp,
                            FUNC22 (VOIDmode, end_2_label),
                            pc_rtx);
       tmp = FUNC6 (FUNC27 (VOIDmode, pc_rtx, tmp));
       JUMP_LABEL (tmp) = end_2_label;

       /* Not in the first two.  Move two bytes forward.  */
       FUNC5 (FUNC17 (tmpreg, tmpreg, FUNC0 (16)));
       if (TARGET_64BIT)
	 FUNC5 (FUNC10 (out, out, const2_rtx));
       else
	 FUNC5 (FUNC12 (out, out, const2_rtx));

       FUNC7 (end_2_label);

    }

  /* Avoid branch in fixing the byte.  */
  tmpreg = FUNC16 (QImode, tmpreg);
  FUNC5 (FUNC11 (tmpreg, tmpreg, tmpreg));
  cmp = FUNC23 (Pmode, FUNC26 (CCmode, 17), const0_rtx);
  if (TARGET_64BIT)
    FUNC5 (FUNC28 (out, out, FUNC0 (3), cmp));
  else
    FUNC5 (FUNC29 (out, out, FUNC0 (3), cmp));

  FUNC7 (end_0_label);
}