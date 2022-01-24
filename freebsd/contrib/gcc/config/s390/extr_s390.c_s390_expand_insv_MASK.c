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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
 int BLKmode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int HImode ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MODE_INT ; 
 int SImode ; 
 scalar_t__ TARGET_EXTIMM ; 
 scalar_t__ TARGET_ZARCH ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  const0_rtx ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  word_mode ; 

bool 
FUNC18 (rtx dest, rtx op1, rtx op2, rtx src)
{
  int bitsize = FUNC3 (op1);
  int bitpos = FUNC3 (op2);

  /* We need byte alignment.  */
  if (bitsize % BITS_PER_UNIT)
    return false;

  if (bitpos == 0
      && FUNC13 (dest, VOIDmode)
      && (FUNC14 (src, word_mode)
	  || FUNC5 (src, VOIDmode)))
    {
      /* Emit standard pattern if possible.  */
      enum machine_mode mode = FUNC17 (bitsize, MODE_INT);
      if (FUNC1 (mode) == bitsize)
	FUNC6 (FUNC4 (dest, mode, 0), FUNC10 (mode, src));

      /* (set (ze (mem)) (const_int)).  */
      else if (FUNC5 (src, VOIDmode))
	{
	  int size = bitsize / BITS_PER_UNIT;
	  rtx src_mem = FUNC4 (FUNC7 (word_mode, src), BLKmode,
					FUNC2 (word_mode) - size);

	  dest = FUNC4 (dest, BLKmode, 0);
	  FUNC16 (dest, FUNC0 (size));
	  FUNC15 (dest, src_mem, FUNC0 (size));
	}
	  
      /* (set (ze (mem)) (reg)).  */
      else if (FUNC14 (src, word_mode))
	{
	  if (bitsize <= FUNC1 (SImode))
	    FUNC6 (FUNC12 (word_mode, dest, op1,
						  const0_rtx), src);
	  else
	    {
	      /* Emit st,stcmh sequence.  */
	      int stcmh_width = bitsize - FUNC1 (SImode);
	      int size = stcmh_width / BITS_PER_UNIT;

	      FUNC6 (FUNC4 (dest, SImode, size), 
			      FUNC10 (SImode, src));
	      FUNC16 (dest, FUNC0 (size));
	      FUNC6 (FUNC12 (word_mode, dest, FUNC0
						    (stcmh_width), const0_rtx),
			      FUNC11 (word_mode, src, FUNC0
						(FUNC1 (SImode))));
	    }
	}
      else
	return false;

      return true;
    }

  /* (set (ze (reg)) (const_int)).  */
  if (TARGET_ZARCH
      && FUNC14 (dest, word_mode) 
      && (bitpos % 16) == 0
      && (bitsize % 16) == 0
      && FUNC5 (src, VOIDmode))
    {
      HOST_WIDE_INT val = FUNC3 (src);
      int regpos = bitpos + bitsize;

      while (regpos > bitpos)
	{
	  enum machine_mode putmode;
	  int putsize;

	  if (TARGET_EXTIMM && (regpos % 32 == 0) && (regpos >= bitpos + 32))
	    putmode = SImode;
	  else
	    putmode = HImode;

	  putsize = FUNC1 (putmode);
	  regpos -= putsize;
	  FUNC6 (FUNC12 (word_mode, dest, 
						FUNC0 (putsize),
						FUNC0 (regpos)), 
			  FUNC9 (val, putmode));
	  val >>= putsize;
	}
      FUNC8 (regpos == bitpos);
      return true;
    }

  return false;
}