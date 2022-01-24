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
typedef  int /*<<< orphan*/ * rtx ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ BYTES_BIG_ENDIAN ; 
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HImode ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QImode ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  const2_rtx ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int) ; 

int
FUNC19 (rtx *operands)
{
  HOST_WIDE_INT in_words_to_go, out_words_to_go, last_bytes;
  HOST_WIDE_INT srcoffset, dstoffset;
  int i;
  rtx src, dst, srcbase, dstbase;
  rtx part_bytes_reg = NULL;
  rtx mem;

  if (FUNC2 (operands[2]) != CONST_INT
      || FUNC2 (operands[3]) != CONST_INT
      || FUNC3 (operands[2]) > 64
      || FUNC3 (operands[3]) & 3)
    return 0;

  dstbase = operands[0];
  srcbase = operands[1];

  dst = FUNC8 (SImode, FUNC4 (dstbase, 0));
  src = FUNC8 (SImode, FUNC4 (srcbase, 0));

  in_words_to_go = FUNC0 (FUNC3 (operands[2]));
  out_words_to_go = FUNC3 (operands[2]) / 4;
  last_bytes = FUNC3 (operands[2]) & 3;
  dstoffset = srcoffset = 0;

  if (out_words_to_go != in_words_to_go && ((in_words_to_go - 1) & 3) != 0)
    part_bytes_reg = FUNC17 (SImode, (in_words_to_go - 1) & 3);

  for (i = 0; in_words_to_go >= 2; i+=4)
    {
      if (in_words_to_go > 4)
	FUNC10 (FUNC6 (0, 4, src, TRUE, TRUE,
					  srcbase, &srcoffset));
      else
	FUNC10 (FUNC6 (0, in_words_to_go, src, TRUE,
					  FALSE, srcbase, &srcoffset));

      if (out_words_to_go)
	{
	  if (out_words_to_go > 4)
	    FUNC10 (FUNC7 (0, 4, dst, TRUE, TRUE,
					       dstbase, &dstoffset));
	  else if (out_words_to_go != 1)
	    FUNC10 (FUNC7 (0, out_words_to_go,
					       dst, TRUE,
					       (last_bytes == 0
						? FALSE : TRUE),
					       dstbase, &dstoffset));
	  else
	    {
	      mem = FUNC5 (dstbase, SImode, dst, dstoffset);
	      FUNC11 (mem, FUNC17 (SImode, 0));
	      if (last_bytes != 0)
		{
		  FUNC10 (FUNC13 (dst, dst, FUNC1 (4)));
		  dstoffset += 4;
		}
	    }
	}

      in_words_to_go -= in_words_to_go < 4 ? in_words_to_go : 4;
      out_words_to_go -= out_words_to_go < 4 ? out_words_to_go : 4;
    }

  /* OUT_WORDS_TO_GO will be zero here if there are byte stores to do.  */
  if (out_words_to_go)
    {
      rtx sreg;

      mem = FUNC5 (srcbase, SImode, src, srcoffset);
      sreg = FUNC9 (mem);

      mem = FUNC5 (dstbase, SImode, dst, dstoffset);
      FUNC11 (mem, sreg);
      in_words_to_go--;

      FUNC12 (!in_words_to_go);	/* Sanity check */
    }

  if (in_words_to_go)
    {
      FUNC12 (in_words_to_go > 0);

      mem = FUNC5 (srcbase, SImode, src, srcoffset);
      part_bytes_reg = FUNC8 (SImode, mem);
    }

  FUNC12 (!last_bytes || part_bytes_reg);

  if (BYTES_BIG_ENDIAN && last_bytes)
    {
      rtx tmp = FUNC16 (SImode);

      /* The bytes we want are in the top end of the word.  */
      FUNC10 (FUNC15 (tmp, part_bytes_reg,
			      FUNC1 (8 * (4 - last_bytes))));
      part_bytes_reg = tmp;

      while (last_bytes)
	{
	  mem = FUNC5 (dstbase, QImode,
					   FUNC18 (dst, last_bytes - 1),
					   dstoffset + last_bytes - 1);
	  FUNC11 (mem, FUNC14 (QImode, part_bytes_reg));

	  if (--last_bytes)
	    {
	      tmp = FUNC16 (SImode);
	      FUNC10 (FUNC15 (tmp, part_bytes_reg, FUNC1 (8)));
	      part_bytes_reg = tmp;
	    }
	}

    }
  else
    {
      if (last_bytes > 1)
	{
	  mem = FUNC5 (dstbase, HImode, dst, dstoffset);
	  FUNC11 (mem, FUNC14 (HImode, part_bytes_reg));
	  last_bytes -= 2;
	  if (last_bytes)
	    {
	      rtx tmp = FUNC16 (SImode);
	      FUNC10 (FUNC13 (dst, dst, const2_rtx));
	      FUNC10 (FUNC15 (tmp, part_bytes_reg, FUNC1 (16)));
	      part_bytes_reg = tmp;
	      dstoffset += 2;
	    }
	}

      if (last_bytes)
	{
	  mem = FUNC5 (dstbase, QImode, dst, dstoffset);
	  FUNC11 (mem, FUNC14 (QImode, part_bytes_reg));
	}
    }

  return 1;
}