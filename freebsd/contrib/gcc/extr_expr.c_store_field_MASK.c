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
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
 int BLKmode ; 
 int /*<<< orphan*/  BLOCK_OP_NORMAL ; 
 scalar_t__ BYTES_BIG_ENDIAN ; 
 scalar_t__ CONCAT ; 
 scalar_t__ ERROR_MARK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int HOST_BITS_PER_WIDE_INT ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int) ; 
 scalar_t__ MODE_COMPLEX_FLOAT ; 
 scalar_t__ MODE_COMPLEX_INT ; 
 scalar_t__ MODE_INT ; 
 scalar_t__ NOP_EXPR ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  RSHIFT_EXPR ; 
 scalar_t__ FUNC13 (int,int) ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 scalar_t__ FUNC20 (scalar_t__,int,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC23 (int,int,scalar_t__,int) ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/ * direct_store ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__,int,int,int,scalar_t__) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC35 (rtx target, HOST_WIDE_INT bitsize, HOST_WIDE_INT bitpos,
	     enum machine_mode mode, tree exp, tree type, int alias_set)
{
  HOST_WIDE_INT width_mask = 0;

  if (FUNC14 (exp) == ERROR_MARK)
    return const0_rtx;

  /* If we have nothing to store, do nothing unless the expression has
     side-effects.  */
  if (bitsize == 0)
    return FUNC27 (exp, const0_rtx, VOIDmode, 0);
  else if (bitsize >= 0 && bitsize < HOST_BITS_PER_WIDE_INT)
    width_mask = ((HOST_WIDE_INT) 1 << bitsize) - 1;

  /* If we are storing into an unaligned field of an aligned union that is
     in a register, we may have the mode of TARGET being an integer mode but
     MODE == BLKmode.  In that case, get an aligned object whose size and
     alignment are the same as TARGET and store TARGET into it (we can avoid
     the store if the field being stored is the entire width of TARGET).  Then
     call ourselves recursively to store the field into a BLKmode version of
     that object.  Finally, load from the object into TARGET.  This is not
     very efficient in general, but should only be slightly more expensive
     than the otherwise-required unaligned accesses.  Perhaps this can be
     cleaned up later.  It's tempting to make OBJECT readonly, but it's set
     twice, once with emit_move_insn and once via store_field.  */

  if (mode == BLKmode
      && (FUNC12 (target) || FUNC1 (target) == SUBREG))
    {
      rtx object = FUNC21 (type, 0, 1, 1);
      rtx blk_object = FUNC20 (object, BLKmode, 0);

      if (bitsize != (HOST_WIDE_INT) FUNC4 (FUNC2 (target)))
	FUNC26 (object, target);

      FUNC35 (blk_object, bitsize, bitpos, mode, exp, type, alias_set);

      FUNC26 (target, object);

      /* We want to return the BLKmode version of the data.  */
      return blk_object;
    }

  if (FUNC1 (target) == CONCAT)
    {
      /* We're storing into a struct containing a single __complex.  */

      FUNC30 (!bitpos);
      return FUNC34 (exp, target, 0);
    }

  /* If the structure is in a register or if the component
     is a bit field, we cannot use addressing to access it.
     Use bit-field techniques or SUBREG to store in it.  */

  if (mode == VOIDmode
      || (mode != BLKmode && ! direct_store[(int) mode]
	  && FUNC5 (mode) != MODE_COMPLEX_INT
	  && FUNC5 (mode) != MODE_COMPLEX_FLOAT)
      || FUNC12 (target)
      || FUNC1 (target) == SUBREG
      /* If the field isn't aligned enough to store as an ordinary memref,
	 store it as a bit field.  */
      || (mode != BLKmode
	  && ((((FUNC8 (target) < FUNC3 (mode))
		|| bitpos % FUNC3 (mode))
	       && FUNC13 (mode, FUNC8 (target)))
	      || (bitpos % BITS_PER_UNIT != 0)))
      /* If the RHS and field are a constant size and the size of the
	 RHS isn't the same size as the bitfield, we must use bitfield
	 operations.  */
      || (bitsize >= 0
	  && FUNC14 (FUNC19 (FUNC16 (exp))) == INTEGER_CST
	  && FUNC22 (FUNC19 (FUNC16 (exp)), bitsize) != 0))
    {
      rtx temp;

      /* If EXP is a NOP_EXPR of precision less than its mode, then that
	 implies a mask operation.  If the precision is the same size as
	 the field we're storing into, that mask is redundant.  This is
	 particularly common with bit field assignments generated by the
	 C front end.  */
      if (FUNC14 (exp) == NOP_EXPR)
	{
	  tree type = FUNC16 (exp);
	  if (FUNC6 (type)
	      && FUNC18 (type) < FUNC4 (FUNC17 (type))
	      && bitsize == FUNC18 (type))
	    {
	      type = FUNC16 (FUNC15 (exp, 0));
	      if (FUNC6 (type) && FUNC18 (type) >= bitsize)
		exp = FUNC15 (exp, 0);
	    }
	}

      temp = FUNC28 (exp);

      /* If BITSIZE is narrower than the size of the type of EXP
	 we will be narrowing TEMP.  Normally, what's wanted are the
	 low-order bits.  However, if EXP's type is a record and this is
	 big-endian machine, we want the upper BITSIZE bits.  */
      if (BYTES_BIG_ENDIAN && FUNC5 (FUNC2 (temp)) == MODE_INT
	  && bitsize < (HOST_WIDE_INT) FUNC4 (FUNC2 (temp))
	  && FUNC14 (FUNC16 (exp)) == RECORD_TYPE)
	temp = FUNC29 (RSHIFT_EXPR, FUNC2 (temp), temp,
			     FUNC32 (FUNC4 (FUNC2 (temp))
				       - bitsize),
			     NULL_RTX, 1);

      /* Unless MODE is VOIDmode or BLKmode, convert TEMP to
	 MODE.  */
      if (mode != VOIDmode && mode != BLKmode
	  && mode != FUNC17 (FUNC16 (exp)))
	temp = FUNC23 (mode, FUNC17 (FUNC16 (exp)), temp, 1);

      /* If the modes of TARGET and TEMP are both BLKmode, both
	 must be in memory and BITPOS must be aligned on a byte
	 boundary.  If so, we simply do a block copy.  */
      if (FUNC2 (target) == BLKmode && FUNC2 (temp) == BLKmode)
	{
	  FUNC30 (FUNC10 (target) && FUNC10 (temp)
		      && !(bitpos % BITS_PER_UNIT));

	  target = FUNC20 (target, VOIDmode, bitpos / BITS_PER_UNIT);
	  FUNC25 (target, temp,
			   FUNC0 ((bitsize + BITS_PER_UNIT - 1)
				    / BITS_PER_UNIT),
			   BLOCK_OP_NORMAL);

	  return const0_rtx;
	}

      /* Store the value in the bitfield.  */
      FUNC33 (target, bitsize, bitpos, mode, temp);

      return const0_rtx;
    }
  else
    {
      /* Now build a reference to just the desired component.  */
      rtx to_rtx = FUNC20 (target, mode, bitpos / BITS_PER_UNIT);

      if (to_rtx == target)
	to_rtx = FUNC24 (to_rtx);

      FUNC11 (to_rtx, 1);
      if (!FUNC9 (to_rtx) && FUNC7 (to_rtx) != 0)
	FUNC31 (to_rtx, alias_set);

      return FUNC34 (exp, to_rtx, 0);
    }
}