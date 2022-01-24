#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {int words; int fp_regs; scalar_t__ prototype; } ;
typedef  TYPE_1__ CUMULATIVE_ARGS ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int AR_ARG_FIRST ; 
 int BLKmode ; 
 scalar_t__ BYTES_BIG_ENDIAN ; 
 int DImode ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FR_ARG_FIRST ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int GR_ARG_FIRST ; 
 int MAX_ARGUMENT_SLOTS ; 
 int SFmode ; 
 int SImode ; 
 int TCmode ; 
 int TFmode ; 
 int UNITS_PER_WORD ; 
 int VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*,scalar_t__,int) ; 
 int FUNC11 (scalar_t__,int) ; 
 void* FUNC12 (scalar_t__) ; 

rtx
FUNC13 (CUMULATIVE_ARGS *cum, enum machine_mode mode, tree type,
		   int named, int incoming)
{
  int basereg = (incoming ? GR_ARG_FIRST : AR_ARG_FIRST);
  int words = FUNC11 (type, mode);
  int offset = FUNC10 (cum, type, words);
  enum machine_mode hfa_mode = VOIDmode;

  /* If all argument slots are used, then it must go on the stack.  */
  if (cum->words + offset >= MAX_ARGUMENT_SLOTS)
    return 0;

  /* Check for and handle homogeneous FP aggregates.  */
  if (type)
    hfa_mode = FUNC9 (type, 0);

  /* Unnamed prototyped hfas are passed as usual.  Named prototyped hfas
     and unprototyped hfas are passed specially.  */
  if (hfa_mode != VOIDmode && (! cum->prototype || named))
    {
      rtx loc[16];
      int i = 0;
      int fp_regs = cum->fp_regs;
      int int_regs = cum->words + offset;
      int hfa_size = FUNC3 (hfa_mode);
      int byte_size;
      int args_byte_size;

      /* If prototyped, pass it in FR regs then GR regs.
	 If not prototyped, pass it in both FR and GR regs.

	 If this is an SFmode aggregate, then it is possible to run out of
	 FR regs while GR regs are still left.  In that case, we pass the
	 remaining part in the GR regs.  */

      /* Fill the FP regs.  We do this always.  We stop if we reach the end
	 of the argument, the last FP register, or the last argument slot.  */

      byte_size = ((mode == BLKmode)
		   ? FUNC12 (type) : FUNC3 (mode));
      args_byte_size = int_regs * UNITS_PER_WORD;
      offset = 0;
      for (; (offset < byte_size && fp_regs < MAX_ARGUMENT_SLOTS
	      && args_byte_size < (MAX_ARGUMENT_SLOTS * UNITS_PER_WORD)); i++)
	{
	  loc[i] = FUNC6 (VOIDmode,
				      FUNC8 (hfa_mode, (FR_ARG_FIRST
							      + fp_regs)),
				      FUNC2 (offset));
	  offset += hfa_size;
	  args_byte_size += hfa_size;
	  fp_regs++;
	}

      /* If no prototype, then the whole thing must go in GR regs.  */
      if (! cum->prototype)
	offset = 0;
      /* If this is an SFmode aggregate, then we might have some left over
	 that needs to go in GR regs.  */
      else if (byte_size != offset)
	int_regs += offset / UNITS_PER_WORD;

      /* Fill in the GR regs.  We must use DImode here, not the hfa mode.  */

      for (; offset < byte_size && int_regs < MAX_ARGUMENT_SLOTS; i++)
	{
	  enum machine_mode gr_mode = DImode;
	  unsigned int gr_size;

	  /* If we have an odd 4 byte hunk because we ran out of FR regs,
	     then this goes in a GR reg left adjusted/little endian, right
	     adjusted/big endian.  */
	  /* ??? Currently this is handled wrong, because 4-byte hunks are
	     always right adjusted/little endian.  */
	  if (offset & 0x4)
	    gr_mode = SImode;
	  /* If we have an even 4 byte hunk because the aggregate is a
	     multiple of 4 bytes in size, then this goes in a GR reg right
	     adjusted/little endian.  */
	  else if (byte_size - offset == 4)
	    gr_mode = SImode;

	  loc[i] = FUNC6 (VOIDmode,
				      FUNC8 (gr_mode, (basereg
							     + int_regs)),
				      FUNC2 (offset));

	  gr_size = FUNC3 (gr_mode);
	  offset += gr_size;
	  if (gr_size == UNITS_PER_WORD
	      || (gr_size < UNITS_PER_WORD && offset % UNITS_PER_WORD == 0))
	    int_regs++;
	  else if (gr_size > UNITS_PER_WORD)
	    int_regs += gr_size / UNITS_PER_WORD;
	}
      return FUNC7 (mode, FUNC5 (i, loc));
    }

  /* Integral and aggregates go in general registers.  If we have run out of
     FR registers, then FP values must also go in general registers.  This can
     happen when we have a SFmode HFA.  */
  else if (mode == TFmode || mode == TCmode
	   || (! FUNC1 (mode) || cum->fp_regs == MAX_ARGUMENT_SLOTS))
    {
      int byte_size = ((mode == BLKmode)
                       ? FUNC12 (type) : FUNC3 (mode));
      if (BYTES_BIG_ENDIAN
	&& (mode == BLKmode || (type && FUNC0 (type)))
	&& byte_size < UNITS_PER_WORD
	&& byte_size > 0)
	{
	  rtx gr_reg = FUNC6 (VOIDmode,
					  FUNC8 (DImode,
						       (basereg + cum->words
							+ offset)),
					  const0_rtx);
	  return FUNC7 (mode, FUNC4 (1, gr_reg));
	}
      else
	return FUNC8 (mode, basereg + cum->words + offset);

    }

  /* If there is a prototype, then FP values go in a FR register when
     named, and in a GR register when unnamed.  */
  else if (cum->prototype)
    {
      if (named)
	return FUNC8 (mode, FR_ARG_FIRST + cum->fp_regs);
      /* In big-endian mode, an anonymous SFmode value must be represented
         as (parallel:SF [(expr_list (reg:DI n) (const_int 0))]) to force
	 the value into the high half of the general register.  */
      else if (BYTES_BIG_ENDIAN && mode == SFmode)
	return FUNC7 (mode,
		 FUNC4 (1,
                   FUNC6 (VOIDmode,
		     FUNC8 (DImode, basereg + cum->words + offset),
				      const0_rtx)));
      else
	return FUNC8 (mode, basereg + cum->words + offset);
    }
  /* If there is no prototype, then FP values go in both FR and GR
     registers.  */
  else
    {
      /* See comment above.  */
      enum machine_mode inner_mode =
	(BYTES_BIG_ENDIAN && mode == SFmode) ? DImode : mode;

      rtx fp_reg = FUNC6 (VOIDmode,
				      FUNC8 (mode, (FR_ARG_FIRST
							  + cum->fp_regs)),
				      const0_rtx);
      rtx gr_reg = FUNC6 (VOIDmode,
				      FUNC8 (inner_mode,
						   (basereg + cum->words
						    + offset)),
				      const0_rtx);

      return FUNC7 (mode, FUNC4 (2, fp_reg, gr_reg));
    }
}