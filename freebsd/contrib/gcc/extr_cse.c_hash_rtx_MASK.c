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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
#define  ASM_OPERANDS 147 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int BLKmode ; 
#define  CALL 146 
#define  CC0 145 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
#define  CONST_DOUBLE 144 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
#define  CONST_INT 143 
#define  CONST_VECTOR 142 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 int FUNC12 (scalar_t__) ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 int FUNC13 (scalar_t__) ; 
 int FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 char* FUNC16 (int) ; 
 int FUNC17 (int) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
#define  LABEL_REF 141 
#define  MEM 140 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  MODE_CC ; 
#define  PC 139 
#define  POST_DEC 138 
#define  POST_INC 137 
#define  POST_MODIFY 136 
#define  PRE_DEC 135 
#define  PRE_INC 134 
#define  PRE_MODIFY 133 
#define  REG 132 
 unsigned int FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (unsigned int) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 
 scalar_t__ FUNC25 (unsigned int) ; 
 int /*<<< orphan*/  SMALL_REGISTER_CLASSES ; 
#define  SUBREG 131 
 unsigned int FUNC26 (scalar_t__) ; 
 scalar_t__ FUNC27 (scalar_t__) ; 
#define  SYMBOL_REF 130 
 unsigned int UNITS_PER_WORD ; 
#define  UNSPEC_VOLATILE 129 
#define  USE 128 
 int VOIDmode ; 
 scalar_t__ FUNC28 (scalar_t__,int) ; 
 scalar_t__ FUNC29 (scalar_t__,int) ; 
 scalar_t__ FUNC30 (scalar_t__,int) ; 
 scalar_t__ FUNC31 (scalar_t__,int,int) ; 
 int FUNC32 (scalar_t__,int) ; 
 scalar_t__ arg_pointer_rtx ; 
 int /*<<< orphan*/ * fixed_regs ; 
 scalar_t__ frame_pointer_rtx ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/ * global_regs ; 
 scalar_t__ hard_frame_pointer_rtx ; 
 unsigned int FUNC34 (scalar_t__) ; 
 scalar_t__ pic_offset_table_rtx ; 
 unsigned int FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reload_completed ; 
 scalar_t__ stack_pointer_rtx ; 

unsigned
FUNC36 (rtx x, enum machine_mode mode, int *do_not_record_p,
	  int *hash_arg_in_memory_p, bool have_reg_qty)
{
  int i, j;
  unsigned hash = 0;
  enum rtx_code code;
  const char *fmt;

  /* Used to turn recursion into iteration.  We can't rely on GCC's
     tail-recursion elimination since we need to keep accumulating values
     in HASH.  */
 repeat:
  if (x == 0)
    return hash;

  code = FUNC13 (x);
  switch (code)
    {
    case REG:
      {
	unsigned int regno = FUNC22 (x);

	if (!reload_completed)
	  {
	    /* On some machines, we can't record any non-fixed hard register,
	       because extending its life will cause reload problems.  We
	       consider ap, fp, sp, gp to be fixed for this purpose.

	       We also consider CCmode registers to be fixed for this purpose;
	       failure to do so leads to failure to simplify 0<100 type of
	       conditionals.

	       On all machines, we can't record any global registers.
	       Nor should we record any register that is in a small
	       class, as defined by CLASS_LIKELY_SPILLED_P.  */
	    bool record;

	    if (regno >= FIRST_PSEUDO_REGISTER)
	      record = true;
	    else if (x == frame_pointer_rtx
		     || x == hard_frame_pointer_rtx
		     || x == arg_pointer_rtx
		     || x == stack_pointer_rtx
		     || x == pic_offset_table_rtx)
	      record = true;
	    else if (global_regs[regno])
	      record = false;
	    else if (fixed_regs[regno])
	      record = true;
	    else if (FUNC15 (FUNC14 (x)) == MODE_CC)
	      record = true;
	    else if (SMALL_REGISTER_CLASSES)
	      record = false;
	    else if (FUNC6 (FUNC23 (regno)))
	      record = false;
	    else
	      record = true;

	    if (!record)
	      {
		*do_not_record_p = 1;
		return 0;
	      }
	  }

	hash += ((unsigned int) REG << 7);
        hash += (have_reg_qty ? (unsigned) FUNC25 (regno) : regno);
	return hash;
      }

    /* We handle SUBREG of a REG specially because the underlying
       reg changes its hash value with every value change; we don't
       want to have to forget unrelated subregs when one subreg changes.  */
    case SUBREG:
      {
	if (FUNC24 (FUNC27 (x)))
	  {
	    hash += (((unsigned int) SUBREG << 7)
		     + FUNC22 (FUNC27 (x))
		     + (FUNC26 (x) / UNITS_PER_WORD));
	    return hash;
	  }
	break;
      }

    case CONST_INT:
      hash += (((unsigned int) CONST_INT << 7) + (unsigned int) mode
               + (unsigned int) FUNC18 (x));
      return hash;

    case CONST_DOUBLE:
      /* This is like the general case, except that it only counts
	 the integers representing the constant.  */
      hash += (unsigned int) code + (unsigned int) FUNC14 (x);
      if (FUNC14 (x) != VOIDmode)
	hash += FUNC35 (FUNC10 (x));
      else
	hash += ((unsigned int) FUNC9 (x)
		 + (unsigned int) FUNC8 (x));
      return hash;

    case CONST_VECTOR:
      {
	int units;
	rtx elt;

	units = FUNC12 (x);

	for (i = 0; i < units; ++i)
	  {
	    elt = FUNC11 (x, i);
	    hash += FUNC36 (elt, FUNC14 (elt), do_not_record_p,
			      hash_arg_in_memory_p, have_reg_qty);
	  }

	return hash;
      }

      /* Assume there is only one rtx object for any given label.  */
    case LABEL_REF:
      /* We don't hash on the address of the CODE_LABEL to avoid bootstrap
	 differences and differences between each stage's debugging dumps.  */
	 hash += (((unsigned int) LABEL_REF << 7)
		  + FUNC7 (FUNC28 (x, 0)));
      return hash;

    case SYMBOL_REF:
      {
	/* Don't hash on the symbol's address to avoid bootstrap differences.
	   Different hash values may cause expressions to be recorded in
	   different orders and thus different registers to be used in the
	   final assembler.  This also avoids differences in the dump files
	   between various stages.  */
	unsigned int h = 0;
	const unsigned char *p = (const unsigned char *) FUNC30 (x, 0);

	while (*p)
	  h += (h << 7) + *p++; /* ??? revisit */

	hash += ((unsigned int) SYMBOL_REF << 7) + h;
	return hash;
      }

    case MEM:
      /* We don't record if marked volatile or if BLKmode since we don't
	 know the size of the move.  */
      if (FUNC21 (x) || FUNC14 (x) == BLKmode)
	{
	  *do_not_record_p = 1;
	  return 0;
	}
      if (hash_arg_in_memory_p && !FUNC20 (x))
	*hash_arg_in_memory_p = 1;

      /* Now that we have already found this special case,
	 might as well speed it up as much as possible.  */
      hash += (unsigned) MEM;
      x = FUNC28 (x, 0);
      goto repeat;

    case USE:
      /* A USE that mentions non-volatile memory needs special
	 handling since the MEM may be BLKmode which normally
	 prevents an entry from being made.  Pure calls are
	 marked by a USE which mentions BLKmode memory.
	 See calls.c:emit_call_1.  */
      if (FUNC19 (FUNC28 (x, 0))
	  && ! FUNC21 (FUNC28 (x, 0)))
	{
	  hash += (unsigned) USE;
	  x = FUNC28 (x, 0);

	  if (hash_arg_in_memory_p && !FUNC20 (x))
	    *hash_arg_in_memory_p = 1;

	  /* Now that we have already found this special case,
	     might as well speed it up as much as possible.  */
	  hash += (unsigned) MEM;
	  x = FUNC28 (x, 0);
	  goto repeat;
	}
      break;

    case PRE_DEC:
    case PRE_INC:
    case POST_DEC:
    case POST_INC:
    case PRE_MODIFY:
    case POST_MODIFY:
    case PC:
    case CC0:
    case CALL:
    case UNSPEC_VOLATILE:
      *do_not_record_p = 1;
      return 0;

    case ASM_OPERANDS:
      if (FUNC21 (x))
	{
	  *do_not_record_p = 1;
	  return 0;
	}
      else
	{
	  /* We don't want to take the filename and line into account.  */
	  hash += (unsigned) code + (unsigned) FUNC14 (x)
	    + FUNC34 (FUNC5 (x))
	    + FUNC34 (FUNC3 (x))
	    + (unsigned) FUNC4 (x);

	  if (FUNC2 (x))
	    {
	      for (i = 1; i < FUNC2 (x); i++)
		{
		  hash += (FUNC36 (FUNC0 (x, i),
				     FUNC14 (FUNC0 (x, i)),
				     do_not_record_p, hash_arg_in_memory_p,
				     have_reg_qty)
			   + FUNC34
				(FUNC1 (x, i)));
		}

	      hash += FUNC34 (FUNC1 (x, 0));
	      x = FUNC0 (x, 0);
	      mode = FUNC14 (x);
	      goto repeat;
	    }

	  return hash;
	}
      break;

    default:
      break;
    }

  i = FUNC17 (code) - 1;
  hash += (unsigned) code + (unsigned) FUNC14 (x);
  fmt = FUNC16 (code);
  for (; i >= 0; i--)
    {
      switch (fmt[i])
	{
	case 'e':
	  /* If we are about to do the last recursive call
	     needed at this level, change it into iteration.
	     This function  is called enough to be worth it.  */
	  if (i == 0)
	    {
	      x = FUNC28 (x, i);
	      goto repeat;
	    }

	  hash += FUNC36 (FUNC28 (x, i), 0, do_not_record_p,
			    hash_arg_in_memory_p, have_reg_qty);
	  break;

	case 'E':
	  for (j = 0; j < FUNC32 (x, i); j++)
	    hash += FUNC36 (FUNC31 (x, i, j), 0, do_not_record_p,
			      hash_arg_in_memory_p, have_reg_qty);
	  break;

	case 's':
	  hash += FUNC34 (FUNC30 (x, i));
	  break;

	case 'i':
	  hash += (unsigned int) FUNC29 (x, i);
	  break;

	case '0': case 't':
	  /* Unused.  */
	  break;

	default:
	  FUNC33 ();
	}
    }

  return hash;
}