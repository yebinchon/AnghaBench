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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  AND 148 
 int CCFPEmode ; 
 int CCFPmode ; 
 scalar_t__ CCXmode ; 
 scalar_t__ CCmode ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONST_DOUBLE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* EMBMEDANY_BASE_REG ; 
#define  EQ 147 
#define  GE 146 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
#define  GEU 145 
#define  GT 144 
#define  GTU 143 
 scalar_t__ HIGH ; 
 char* HOST_WIDE_INT_PRINT_DEC ; 
 int /*<<< orphan*/  INTEGER_CST ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
#define  IOR 142 
#define  LE 141 
#define  LEU 140 
 scalar_t__ LO_SUM ; 
#define  LT 139 
#define  LTGT 138 
#define  LTU 137 
 scalar_t__ MEM ; 
 scalar_t__ MODE_INT ; 
#define  NE 136 
#define  ORDERED 135 
 int PROCESSOR_V9 ; 
 int /*<<< orphan*/  QImode ; 
 scalar_t__ REG ; 
 size_t FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SImode ; 
 size_t SPARC_ICC_REG ; 
 int /*<<< orphan*/  TARGET_ARCH64 ; 
 scalar_t__ TARGET_CM_MEDMID ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
#define  UNEQ 134 
#define  UNGE 133 
#define  UNGT 132 
#define  UNLE 131 
#define  UNLT 130 
#define  UNORDERED 129 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  WORDS_BIG_ENDIAN ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
#define  XOR 128 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  current_function_returns_struct ; 
 int /*<<< orphan*/  final_sequence ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optimize ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 char** reg_names ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 int FUNC24 (scalar_t__) ; 
 scalar_t__ sparc_cpu ; 
 int sparc_indent_opcode ; 
 int /*<<< orphan*/  sparc_std_struct_return ; 
 int FUNC25 (int,int /*<<< orphan*/ ) ; 

void
FUNC26 (FILE *file, rtx x, int code)
{
  switch (code)
    {
    case '#':
      /* Output an insn in a delay slot.  */
      if (final_sequence)
        sparc_indent_opcode = 1;
      else
	FUNC16 ("\n\t nop", file);
      return;
    case '*':
      /* Output an annul flag if there's nothing for the delay slot and we
	 are optimizing.  This is always used with '(' below.
         Sun OS 4.1.1 dbx can't handle an annulled unconditional branch;
	 this is a dbx bug.  So, we only do this when optimizing.
         On UltraSPARC, a branch in a delay slot causes a pipeline flush.
	 Always emit a nop in case the next instruction is a branch.  */
      if (! final_sequence && (optimize && (int)sparc_cpu < PROCESSOR_V9))
	FUNC16 (",a", file);
      return;
    case '(':
      /* Output a 'nop' if there's nothing for the delay slot and we are
	 not optimizing.  This is always used with '*' above.  */
      if (! final_sequence && ! (optimize && (int)sparc_cpu < PROCESSOR_V9))
	FUNC16 ("\n\t nop", file);
      else if (final_sequence)
        sparc_indent_opcode = 1;
      return;
    case ')':
      /* Output the right displacement from the saved PC on function return.
	 The caller may have placed an "unimp" insn immediately after the call
	 so we have to account for it.  This insn is used in the 32-bit ABI
	 when calling a function that returns a non zero-sized structure. The
	 64-bit ABI doesn't have it.  Be careful to have this test be the same
	 as that used on the call. The exception here is that when 
	 sparc_std_struct_return is enabled, the psABI is followed exactly
	 and the adjustment is made by the code in sparc_struct_value_rtx. 
	 The call emitted is the same when sparc_std_struct_return is 
	 present. */
     if (! TARGET_ARCH64
	 && current_function_returns_struct
	 && ! sparc_std_struct_return
	 && (FUNC11 (FUNC5 (FUNC4 (current_function_decl)))
	     == INTEGER_CST)
	 && ! FUNC19 (FUNC5 (FUNC4 (current_function_decl))))
	FUNC16 ("12", file);
      else
        FUNC15 ('8', file);
      return;
    case '_':
      /* Output the Embedded Medium/Anywhere code model base register.  */
      FUNC16 (EMBMEDANY_BASE_REG, file);
      return;
    case '&':
      /* Print some local dynamic TLS name.  */
      FUNC13 (file, FUNC18 ());
      return;

    case 'Y':
      /* Adjust the operand to take into account a RESTORE operation.  */
      if (FUNC6 (x) == CONST_INT)
	break;
      else if (FUNC6 (x) != REG)
	FUNC22 ("invalid %%Y operand");
      else if (FUNC10 (x) < 8)
	FUNC16 (reg_names[FUNC10 (x)], file);
      else if (FUNC10 (x) >= 24 && FUNC10 (x) < 32)
	FUNC16 (reg_names[FUNC10 (x)-16], file);
      else
	FUNC22 ("invalid %%Y operand");
      return;
    case 'L':
      /* Print out the low order register name of a register pair.  */
      if (WORDS_BIG_ENDIAN)
	FUNC16 (reg_names[FUNC10 (x)+1], file);
      else
	FUNC16 (reg_names[FUNC10 (x)], file);
      return;
    case 'H':
      /* Print out the high order register name of a register pair.  */
      if (WORDS_BIG_ENDIAN)
	FUNC16 (reg_names[FUNC10 (x)], file);
      else
	FUNC16 (reg_names[FUNC10 (x)+1], file);
      return;
    case 'R':
      /* Print out the second register name of a register pair or quad.
	 I.e., R (%o0) => %o1.  */
      FUNC16 (reg_names[FUNC10 (x)+1], file);
      return;
    case 'S':
      /* Print out the third register name of a register quad.
	 I.e., S (%o0) => %o2.  */
      FUNC16 (reg_names[FUNC10 (x)+2], file);
      return;
    case 'T':
      /* Print out the fourth register name of a register quad.
	 I.e., T (%o0) => %o3.  */
      FUNC16 (reg_names[FUNC10 (x)+3], file);
      return;
    case 'x':
      /* Print a condition code register.  */
      if (FUNC10 (x) == SPARC_ICC_REG)
	{
	  /* We don't handle CC[X]_NOOVmode because they're not supposed
	     to occur here.  */
	  if (FUNC7 (x) == CCmode)
	    FUNC16 ("%icc", file);
	  else if (FUNC7 (x) == CCXmode)
	    FUNC16 ("%xcc", file);
	  else
	    FUNC17 ();
	}
      else
	/* %fccN register */
	FUNC16 (reg_names[FUNC10 (x)], file);
      return;
    case 'm':
      /* Print the operand's address only.  */
      FUNC21 (FUNC12 (x, 0));
      return;
    case 'r':
      /* In this case we need a register.  Use %g0 if the
	 operand is const0_rtx.  */
      if (x == const0_rtx
	  || (FUNC7 (x) != VOIDmode && x == FUNC0 (FUNC7 (x))))
	{
	  FUNC16 ("%g0", file);
	  return;
	}
      else
	break;

    case 'A':
      switch (FUNC6 (x))
	{
	case IOR: FUNC16 ("or", file); break;
	case AND: FUNC16 ("and", file); break;
	case XOR: FUNC16 ("xor", file); break;
	default: FUNC22 ("invalid %%A operand");
	}
      return;

    case 'B':
      switch (FUNC6 (x))
	{
	case IOR: FUNC16 ("orn", file); break;
	case AND: FUNC16 ("andn", file); break;
	case XOR: FUNC16 ("xnor", file); break;
	default: FUNC22 ("invalid %%B operand");
	}
      return;

      /* These are used by the conditional move instructions.  */
    case 'c' :
    case 'C':
      {
	enum rtx_code rc = FUNC6 (x);
	
	if (code == 'c')
	  {
	    enum machine_mode mode = FUNC7 (FUNC12 (x, 0));
	    if (mode == CCFPmode || mode == CCFPEmode)
	      rc = FUNC24 (FUNC6 (x));
	    else
	      rc = FUNC23 (FUNC6 (x));
	  }
	switch (rc)
	  {
	  case NE: FUNC16 ("ne", file); break;
	  case EQ: FUNC16 ("e", file); break;
	  case GE: FUNC16 ("ge", file); break;
	  case GT: FUNC16 ("g", file); break;
	  case LE: FUNC16 ("le", file); break;
	  case LT: FUNC16 ("l", file); break;
	  case GEU: FUNC16 ("geu", file); break;
	  case GTU: FUNC16 ("gu", file); break;
	  case LEU: FUNC16 ("leu", file); break;
	  case LTU: FUNC16 ("lu", file); break;
	  case LTGT: FUNC16 ("lg", file); break;
	  case UNORDERED: FUNC16 ("u", file); break;
	  case ORDERED: FUNC16 ("o", file); break;
	  case UNLT: FUNC16 ("ul", file); break;
	  case UNLE: FUNC16 ("ule", file); break;
	  case UNGT: FUNC16 ("ug", file); break;
	  case UNGE: FUNC16 ("uge", file); break;
	  case UNEQ: FUNC16 ("ue", file); break;
	  default: FUNC22 (code == 'c'
					   ? "invalid %%c operand"
					   : "invalid %%C operand");
	  }
	return;
      }

      /* These are used by the movr instruction pattern.  */
    case 'd':
    case 'D':
      {
	enum rtx_code rc = (code == 'd'
			    ? FUNC23 (FUNC6 (x))
			    : FUNC6 (x));
	switch (rc)
	  {
	  case NE: FUNC16 ("ne", file); break;
	  case EQ: FUNC16 ("e", file); break;
	  case GE: FUNC16 ("gez", file); break;
	  case LT: FUNC16 ("lz", file); break;
	  case LE: FUNC16 ("lez", file); break;
	  case GT: FUNC16 ("gz", file); break;
	  default: FUNC22 (code == 'd'
					   ? "invalid %%d operand"
					   : "invalid %%D operand");
	  }
	return;
      }

    case 'b':
      {
	/* Print a sign-extended character.  */
	int i = FUNC25 (FUNC9 (x), QImode);
	FUNC14 (file, "%d", i);
	return;
      }

    case 'f':
      /* Operand must be a MEM; write its address.  */
      if (FUNC6 (x) != MEM)
	FUNC22 ("invalid %%f operand");
      FUNC21 (FUNC12 (x, 0));
      return;

    case 's':
      {
	/* Print a sign-extended 32-bit value.  */
	HOST_WIDE_INT i;
	if (FUNC6(x) == CONST_INT)
	  i = FUNC9 (x);
	else if (FUNC6(x) == CONST_DOUBLE)
	  i = FUNC3 (x);
	else
	  {
	    FUNC22 ("invalid %%s operand");
	    return;
	  }
	i = FUNC25 (i, SImode);
	FUNC14 (file, HOST_WIDE_INT_PRINT_DEC, i);
	return;
      }

    case 0:
      /* Do nothing special.  */
      break;

    default:
      /* Undocumented flag.  */
      FUNC22 ("invalid operand output code");
    }

  if (FUNC6 (x) == REG)
    FUNC16 (reg_names[FUNC10 (x)], file);
  else if (FUNC6 (x) == MEM)
    {
      FUNC15 ('[', file);
	/* Poor Sun assembler doesn't understand absolute addressing.  */
      if (FUNC1 (FUNC12 (x, 0)))
	FUNC16 ("%g0+", file);
      FUNC21 (FUNC12 (x, 0));
      FUNC15 (']', file);
    }
  else if (FUNC6 (x) == HIGH)
    {
      FUNC16 ("%hi(", file);
      FUNC20 (file, FUNC12 (x, 0));
      FUNC15 (')', file);
    }
  else if (FUNC6 (x) == LO_SUM)
    {
      FUNC26 (file, FUNC12 (x, 0), 0);
      if (TARGET_CM_MEDMID)
	FUNC16 ("+%l44(", file);
      else
	FUNC16 ("+%lo(", file);
      FUNC20 (file, FUNC12 (x, 1));
      FUNC15 (')', file);
    }
  else if (FUNC6 (x) == CONST_DOUBLE
	   && (FUNC7 (x) == VOIDmode
	       || FUNC8 (FUNC7 (x)) == MODE_INT))
    {
      if (FUNC2 (x) == 0)
	FUNC14 (file, "%u", (unsigned int) FUNC3 (x));
      else if (FUNC2 (x) == -1
	       && FUNC3 (x) < 0)
	FUNC14 (file, "%d", (int) FUNC3 (x));
      else
	FUNC22 ("long long constant not a valid immediate operand");
    }
  else if (FUNC6 (x) == CONST_DOUBLE)
    FUNC22 ("floating point constant not a valid immediate operand");
  else { FUNC20 (file, x); }
}