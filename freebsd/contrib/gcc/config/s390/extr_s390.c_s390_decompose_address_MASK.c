#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct s390_address {int pointer; int literal_pool; scalar_t__ disp; scalar_t__ indx; scalar_t__ base; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {scalar_t__ base_reg; scalar_t__ decomposed_literal_pool_addresses_ok_p; } ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ ARG_POINTER_REGNUM ; 
 scalar_t__ CONST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FRAME_POINTER_REGNUM ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ HARD_FRAME_POINTER_REGNUM ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ MINUS ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ PIC_OFFSET_TABLE_REGNUM ; 
 scalar_t__ PLUS ; 
 scalar_t__ Pmode ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ SImode ; 
 scalar_t__ STACK_POINTER_REGNUM ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ UNSPEC ; 
 int UNSPEC_GOT ; 
 int UNSPEC_GOTNTPOFF ; 
#define  UNSPEC_LTREF 129 
#define  UNSPEC_LTREL_BASE 128 
 int UNSPEC_LTREL_OFFSET ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 int FUNC10 (scalar_t__,int) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ arg_pointer_rtx ; 
 TYPE_2__* cfun ; 
 int flag_pic ; 
 scalar_t__ frame_pointer_needed ; 
 scalar_t__ frame_pointer_rtx ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 scalar_t__ reload_completed ; 
 scalar_t__ reload_in_progress ; 
 scalar_t__ return_address_pointer_rtx ; 
 scalar_t__ virtual_stack_vars_rtx ; 

__attribute__((used)) static int
FUNC19 (rtx addr, struct s390_address *out)
{
  HOST_WIDE_INT offset = 0;
  rtx base = NULL_RTX;
  rtx indx = NULL_RTX;
  rtx disp = NULL_RTX;
  rtx orig_disp;
  bool pointer = false;
  bool base_ptr = false;
  bool indx_ptr = false;
  bool literal_pool = false;

  /* We may need to substitute the literal pool base register into the address
     below.  However, at this point we do not know which register is going to
     be used as base, so we substitute the arg pointer register.  This is going
     to be treated as holding a pointer below -- it shouldn't be used for any
     other purpose.  */
  rtx fake_pool_base = FUNC15 (Pmode, ARG_POINTER_REGNUM);

  /* Decompose address into base + index + displacement.  */

  if (FUNC2 (addr) == REG || FUNC2 (addr) == UNSPEC)
    base = addr;

  else if (FUNC2 (addr) == PLUS)
    {
      rtx op0 = FUNC9 (addr, 0);
      rtx op1 = FUNC9 (addr, 1);
      enum rtx_code code0 = FUNC2 (op0);
      enum rtx_code code1 = FUNC2 (op1);

      if (code0 == REG || code0 == UNSPEC)
	{
	  if (code1 == REG || code1 == UNSPEC)
	    {
	      indx = op0;	/* index + base */
	      base = op1;
	    }

	  else
	    {
	      base = op0;	/* base + displacement */
	      disp = op1;
	    }
	}

      else if (code0 == PLUS)
	{
	  indx = FUNC9 (op0, 0);	/* index + base + disp */
	  base = FUNC9 (op0, 1);
	  disp = op1;
	}

      else
	{
	  return false;
	}
    }

  else
    disp = addr;		/* displacement */

  /* Extract integer part of displacement.  */
  orig_disp = disp;
  if (disp)
    {
      if (FUNC2 (disp) == CONST_INT)
	{
	  offset = FUNC5 (disp);
	  disp = NULL_RTX;
	}
      else if (FUNC2 (disp) == CONST
	       && FUNC2 (FUNC9 (disp, 0)) == PLUS
	       && FUNC2 (FUNC9 (FUNC9 (disp, 0), 1)) == CONST_INT)
	{
	  offset = FUNC5 (FUNC9 (FUNC9 (disp, 0), 1));
	  disp = FUNC9 (FUNC9 (disp, 0), 0);
	}
    }

  /* Strip off CONST here to avoid special case tests later.  */
  if (disp && FUNC2 (disp) == CONST)
    disp = FUNC9 (disp, 0);

  /* We can convert literal pool addresses to
     displacements by basing them off the base register.  */
  if (disp && FUNC2 (disp) == SYMBOL_REF && FUNC0 (disp))
    {
      /* Either base or index must be free to hold the base register.  */
      if (!base)
        base = fake_pool_base, literal_pool = true;
      else if (!indx)
        indx = fake_pool_base, literal_pool = true;
      else
        return false;

      /* Mark up the displacement.  */
      disp = FUNC16 (Pmode, FUNC13 (1, disp),
			     UNSPEC_LTREL_OFFSET);
    }

  /* Validate base register.  */
  if (base)
    {
      if (FUNC2 (base) == UNSPEC)
	switch (FUNC10 (base, 1))
	  {
	  case UNSPEC_LTREF:
	    if (!disp)
	      disp = FUNC16 (Pmode, 
				     FUNC13 (1, FUNC11 (base, 0, 0)),
				     UNSPEC_LTREL_OFFSET);
	    else
	      return false;

	    base = FUNC11 (base, 0, 1);
	    break;

	  case UNSPEC_LTREL_BASE:
	    if (FUNC12 (base, 0) == 1)
	      base = fake_pool_base, literal_pool = true;
	    else
	      base = FUNC11 (base, 0, 1);
	    break;

	  default:
	    return false;
	  }

      if (!FUNC7 (base) 
	  || (FUNC3 (base) != SImode 
	      && FUNC3 (base) != Pmode))
	return false;

      if (FUNC6 (base) == STACK_POINTER_REGNUM
	  || FUNC6 (base) == FRAME_POINTER_REGNUM
	  || ((reload_completed || reload_in_progress)
	      && frame_pointer_needed
	      && FUNC6 (base) == HARD_FRAME_POINTER_REGNUM)
	  || FUNC6 (base) == ARG_POINTER_REGNUM
          || (flag_pic
              && FUNC6 (base) == PIC_OFFSET_TABLE_REGNUM))
        pointer = base_ptr = true;

      if ((reload_completed || reload_in_progress)
	  && base == cfun->machine->base_reg)
        pointer = base_ptr = literal_pool = true;
    }

  /* Validate index register.  */
  if (indx)
    {
      if (FUNC2 (indx) == UNSPEC)
	switch (FUNC10 (indx, 1))
	  {
	  case UNSPEC_LTREF:
	    if (!disp)
	      disp = FUNC16 (Pmode, 
				     FUNC13 (1, FUNC11 (indx, 0, 0)),
				     UNSPEC_LTREL_OFFSET);
	    else
	      return false;

	    indx = FUNC11 (indx, 0, 1);
	    break;

	  case UNSPEC_LTREL_BASE:
	    if (FUNC12 (indx, 0) == 1)
	      indx = fake_pool_base, literal_pool = true;
	    else
	      indx = FUNC11 (indx, 0, 1);
	    break;

	  default:
	    return false;
	  }

      if (!FUNC7 (indx) 
	  || (FUNC3 (indx) != SImode
	      && FUNC3 (indx) != Pmode))
	return false;

      if (FUNC6 (indx) == STACK_POINTER_REGNUM
	  || FUNC6 (indx) == FRAME_POINTER_REGNUM
	  || ((reload_completed || reload_in_progress)
	      && frame_pointer_needed
	      && FUNC6 (indx) == HARD_FRAME_POINTER_REGNUM)
	  || FUNC6 (indx) == ARG_POINTER_REGNUM
          || (flag_pic
              && FUNC6 (indx) == PIC_OFFSET_TABLE_REGNUM))
        pointer = indx_ptr = true;

      if ((reload_completed || reload_in_progress)
	  && indx == cfun->machine->base_reg)
        pointer = indx_ptr = literal_pool = true;
    }

  /* Prefer to use pointer as base, not index.  */
  if (base && indx && !base_ptr
      && (indx_ptr || (!FUNC8 (base) && FUNC8 (indx))))
    {
      rtx tmp = base;
      base = indx;
      indx = tmp;
    }

  /* Validate displacement.  */
  if (!disp)
    {
      /* If virtual registers are involved, the displacement will change later 
	 anyway as the virtual registers get eliminated.  This could make a 
	 valid displacement invalid, but it is more likely to make an invalid 
	 displacement valid, because we sometimes access the register save area 
	 via negative offsets to one of those registers.
	 Thus we don't check the displacement for validity here.  If after
	 elimination the displacement turns out to be invalid after all,
	 this is fixed up by reload in any case.  */
      if (base != arg_pointer_rtx 
	  && indx != arg_pointer_rtx 
	  && base != return_address_pointer_rtx 
	  && indx != return_address_pointer_rtx
	  && base != frame_pointer_rtx 
	  && indx != frame_pointer_rtx
	  && base != virtual_stack_vars_rtx 
	  && indx != virtual_stack_vars_rtx)
	if (!FUNC1 (offset))
	  return false;
    }
  else
    {
      /* All the special cases are pointers.  */
      pointer = true;

      /* In the small-PIC case, the linker converts @GOT
         and @GOTNTPOFF offsets to possible displacements.  */
      if (FUNC2 (disp) == UNSPEC
          && (FUNC10 (disp, 1) == UNSPEC_GOT
	      || FUNC10 (disp, 1) == UNSPEC_GOTNTPOFF)
	  && flag_pic == 1)
        {
	  ;
        }

      /* Accept chunkified literal pool symbol references.  */
      else if (cfun && cfun->machine
	       && cfun->machine->decomposed_literal_pool_addresses_ok_p
	       && FUNC2 (disp) == MINUS
               && FUNC2 (FUNC9 (disp, 0)) == LABEL_REF
               && FUNC2 (FUNC9 (disp, 1)) == LABEL_REF)
        {
	  ;
        }

      /* Accept literal pool references.  */
      else if (FUNC2 (disp) == UNSPEC
	       && FUNC10 (disp, 1) == UNSPEC_LTREL_OFFSET)
        {
	  orig_disp = FUNC14 (Pmode, disp);
	  if (offset)
	    {
	      /* If we have an offset, make sure it does not
		 exceed the size of the constant pool entry.  */
	      rtx sym = FUNC11 (disp, 0, 0);
	      if (offset >= FUNC4 (FUNC17 (sym)))
		return false;

              orig_disp = FUNC18 (orig_disp, offset);
	    }
        }

      else
	return false;
    }

  if (!base && !indx)
    pointer = true;

  if (out)
    {
      out->base = base;
      out->indx = indx;
      out->disp = orig_disp;
      out->pointer = pointer;
      out->literal_pool = literal_pool;
    }

  return true;
}