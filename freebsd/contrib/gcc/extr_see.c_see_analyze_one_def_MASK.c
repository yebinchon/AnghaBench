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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum entry_type { ____Placeholder_entry_type } entry_type ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  BITS_PER_WORD ; 
#define  CONST_INT 131 
 int EXTENDED_DEF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int MAX_MACHINE_MODE ; 
 int /*<<< orphan*/  MODE_INT ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int NOT_RELEVANT ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  PARALLEL ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REG_LIBCALL ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REG_RETVAL ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
#define  SIGN_EXTEND 130 
 int SIGN_EXTENDED_DEF ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
#define  UNKNOWN 129 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  ZERO_EXTEND 128 
 int ZERO_EXTENDED_DEF ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int,int) ; 

__attribute__((used)) static enum entry_type
FUNC25 (rtx insn, enum machine_mode *source_mode,
		     enum machine_mode *source_mode_unsigned)
{
  enum rtx_code extension_code;
  rtx rhs = NULL;
  rtx lhs = NULL;
  rtx set = NULL;
  rtx source_register = NULL;
  rtx prev_insn = NULL;
  rtx next_insn = NULL;
  enum machine_mode mode;
  enum machine_mode next_source_mode;
  HOST_WIDE_INT val = 0;
  HOST_WIDE_INT val2 = 0;
  int i = 0;

  *source_mode = MAX_MACHINE_MODE;
  *source_mode_unsigned = MAX_MACHINE_MODE;

  if (!insn)
    return NOT_RELEVANT;

  if (!FUNC6 (insn))
    return NOT_RELEVANT;

  extension_code = FUNC21 (insn, source_mode);
  switch (extension_code)
    {
    case SIGN_EXTEND:
    case ZERO_EXTEND:
      source_register = FUNC22 (insn, 0);
      /* FIXME: This restriction can be relaxed.  The only thing that is
	 important is that the reference would be inside the same basic block
	 as the extension.  */
      prev_insn = FUNC10 (insn);
      if (!prev_insn || !FUNC6 (prev_insn))
	return NOT_RELEVANT;

      if (!FUNC20 (source_register, FUNC10 (prev_insn), insn))
	return NOT_RELEVANT;

      if (FUNC18 (prev_insn, REG_LIBCALL, NULL_RTX))
	return NOT_RELEVANT;

      if (FUNC18 (prev_insn, REG_RETVAL, NULL_RTX))
	return NOT_RELEVANT;

      /* If we can't use copy_rtx on the reference it can't be a reference.  */
      if (FUNC1 (FUNC9 (prev_insn)) == PARALLEL
	   && FUNC17 (FUNC9 (prev_insn)) >= 0)
	return NOT_RELEVANT;

      /* Now, check if this extension is a reference itself.  If so, it is not
	 relevant.  Handling this extension as relevant would make things much
	 more complicated.  */
      next_insn = FUNC8 (insn);
      if (next_insn
	  && FUNC6 (next_insn)
	  && (FUNC21 (next_insn, &next_source_mode) !=
	      NOT_RELEVANT))
	{
	  rtx curr_dest_register = FUNC22 (insn, 1);
	  rtx next_source_register = FUNC22 (next_insn, 0);

	  if (FUNC11 (curr_dest_register) == FUNC11 (next_source_register))
	    return NOT_RELEVANT;
	}

      if (extension_code == SIGN_EXTEND)
	return SIGN_EXTENDED_DEF;
      else
	return ZERO_EXTENDED_DEF;

    case UNKNOWN:
      /* This may still be an EXTENDED_DEF.  */

      /* FIXME: This restriction can be relaxed.  It is possible to handle
	 PARALLEL insns too.  */
      set = FUNC23 (insn);
      if (!set)
	return NOT_RELEVANT;
      rhs = FUNC14 (set);
      lhs = FUNC13 (set);

      /* Don't handle extensions to something other then register or
	 subregister.  */
      if (!FUNC12 (lhs) && !FUNC15 (lhs))
	return NOT_RELEVANT;

      switch (FUNC1 (rhs))
	{
	case SIGN_EXTEND:
	  *source_mode = FUNC2 (FUNC16 (rhs, 0));
	  *source_mode_unsigned = MAX_MACHINE_MODE;
	  return EXTENDED_DEF;
	case ZERO_EXTEND:
	  *source_mode = MAX_MACHINE_MODE;
	  *source_mode_unsigned = FUNC2 (FUNC16 (rhs, 0));
	  return EXTENDED_DEF;
	case CONST_INT:

	  val = FUNC7 (rhs);

	  /* Find the narrowest mode, val could fit into.  */
	  for (mode = FUNC0 (MODE_INT), i = 0;
	       FUNC3 (mode) < BITS_PER_WORD;
	       mode = FUNC5 (mode), i++)
	    {
	      val2 = FUNC24 (val, mode);
  	      if (val2 == val && *source_mode == MAX_MACHINE_MODE)
		*source_mode = mode;
	      if (val == (val & (HOST_WIDE_INT)FUNC4 (mode))
		  && *source_mode_unsigned == MAX_MACHINE_MODE)
		*source_mode_unsigned = mode;
	      if (*source_mode != MAX_MACHINE_MODE
		  && *source_mode_unsigned !=MAX_MACHINE_MODE)
		return EXTENDED_DEF;
	    }
	  if (*source_mode != MAX_MACHINE_MODE
	      || *source_mode_unsigned !=MAX_MACHINE_MODE)
	    return EXTENDED_DEF;
	  return NOT_RELEVANT;
	default:
	  return NOT_RELEVANT;
	}
    default:
      FUNC19 ();
    }
}