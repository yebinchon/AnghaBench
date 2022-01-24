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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONST_INT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* HOST_WIDE_INT_PRINT_DEC ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 
 int /*<<< orphan*/  FUNC5 (char const) ; 
 int MAX_RECOG_OPERANDS ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  asm_out_file ; 
 int dialect_number ; 
 scalar_t__ flag_print_asm_name ; 
 scalar_t__ flag_verbose_asm ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int insn_counter ; 
 unsigned long insn_noperands ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char,int /*<<< orphan*/ ) ; 
 unsigned long FUNC17 (char const*,char**,int) ; 
 int /*<<< orphan*/  this_is_asm_operands ; 

void
FUNC18 (const char *template, rtx *operands)
{
  const char *p;
  int c;
#ifdef ASSEMBLER_DIALECT
  int dialect = 0;
#endif
  int oporder[MAX_RECOG_OPERANDS];
  char opoutput[MAX_RECOG_OPERANDS];
  int ops = 0;

  /* An insn may return a null string template
     in a case where no assembler code is needed.  */
  if (*template == 0)
    return;

  FUNC8 (opoutput, 0, sizeof opoutput);
  p = template;
  FUNC16 ('\t', asm_out_file);

#ifdef ASM_OUTPUT_OPCODE
  ASM_OUTPUT_OPCODE (asm_out_file, p);
#endif

  while ((c = *p++))
    switch (c)
      {
      case '\n':
	if (flag_verbose_asm)
	  FUNC13 (operands, oporder, ops);
	if (flag_print_asm_name)
	  FUNC12 ();

	ops = 0;
	FUNC8 (opoutput, 0, sizeof opoutput);

	FUNC16 (c, asm_out_file);
#ifdef ASM_OUTPUT_OPCODE
	while ((c = *p) == '\t')
	  {
	    putc (c, asm_out_file);
	    p++;
	  }
	ASM_OUTPUT_OPCODE (asm_out_file, p);
#endif
	break;

#ifdef ASSEMBLER_DIALECT
      case '{':
	{
	  int i;

	  if (dialect)
	    output_operand_lossage ("nested assembly dialect alternatives");
	  else
	    dialect = 1;

	  /* If we want the first dialect, do nothing.  Otherwise, skip
	     DIALECT_NUMBER of strings ending with '|'.  */
	  for (i = 0; i < dialect_number; i++)
	    {
	      while (*p && *p != '}' && *p++ != '|')
		;
	      if (*p == '}')
		break;
	      if (*p == '|')
		p++;
	    }

	  if (*p == '\0')
	    output_operand_lossage ("unterminated assembly dialect alternative");
	}
	break;

      case '|':
	if (dialect)
	  {
	    /* Skip to close brace.  */
	    do
	      {
		if (*p == '\0')
		  {
		    output_operand_lossage ("unterminated assembly dialect alternative");
		    break;
		  }
	      }
	    while (*p++ != '}');
	    dialect = 0;
	  }
	else
	  putc (c, asm_out_file);
	break;

      case '}':
	if (! dialect)
	  putc (c, asm_out_file);
	dialect = 0;
	break;
#endif

      case '%':
	/* %% outputs a single %.  */
	if (*p == '%')
	  {
	    p++;
	    FUNC16 (c, asm_out_file);
	  }
	/* %= outputs a number which is unique to each insn in the entire
	   compilation.  This is useful for making local labels that are
	   referred to more than once in a given insn.  */
	else if (*p == '=')
	  {
	    p++;
	    FUNC7 (asm_out_file, "%d", insn_counter);
	  }
	/* % followed by a letter and some digits
	   outputs an operand in a special way depending on the letter.
	   Letters `acln' are implemented directly.
	   Other letters are passed to `output_operand' so that
	   the PRINT_OPERAND macro can define them.  */
	else if (FUNC4 (*p))
	  {
	    int letter = *p++;
	    unsigned long opnum;
	    char *endptr;

	    opnum = FUNC17 (p, &endptr, 10);

	    if (endptr == p)
	      FUNC15 ("operand number missing "
				      "after %%-letter");
	    else if (this_is_asm_operands && opnum >= insn_noperands)
	      FUNC15 ("operand number out of range");
	    else if (letter == 'l')
	      FUNC11 (operands[opnum]);
	    else if (letter == 'a')
	      FUNC10 (operands[opnum]);
	    else if (letter == 'c')
	      {
		if (FUNC1 (operands[opnum]))
		  FUNC9 (asm_out_file, operands[opnum]);
		else
		  FUNC14 (operands[opnum], 'c');
	      }
	    else if (letter == 'n')
	      {
		if (FUNC2 (operands[opnum]) == CONST_INT)
		  FUNC7 (asm_out_file, HOST_WIDE_INT_PRINT_DEC,
			   - FUNC3 (operands[opnum]));
		else
		  {
		    FUNC16 ('-', asm_out_file);
		    FUNC9 (asm_out_file, operands[opnum]);
		  }
	      }
	    else
	      FUNC14 (operands[opnum], letter);

	    if (!opoutput[opnum])
	      oporder[ops++] = opnum;
	    opoutput[opnum] = 1;

	    p = endptr;
	    c = *p;
	  }
	/* % followed by a digit outputs an operand the default way.  */
	else if (FUNC5 (*p))
	  {
	    unsigned long opnum;
	    char *endptr;

	    opnum = FUNC17 (p, &endptr, 10);
	    if (this_is_asm_operands && opnum >= insn_noperands)
	      FUNC15 ("operand number out of range");
	    else
	      FUNC14 (operands[opnum], 0);

	    if (!opoutput[opnum])
	      oporder[ops++] = opnum;
	    opoutput[opnum] = 1;

	    p = endptr;
	    c = *p;
	  }
	/* % followed by punctuation: output something for that
	   punctuation character alone, with no operand.
	   The PRINT_OPERAND macro decides what is actually done.  */
#ifdef PRINT_OPERAND_PUNCT_VALID_P
	else if (PRINT_OPERAND_PUNCT_VALID_P ((unsigned char) *p))
	  output_operand (NULL_RTX, *p++);
#endif
	else
	  FUNC15 ("invalid %%-code");
	break;

      default:
	FUNC16 (c, asm_out_file);
      }

  /* Write out the variable names for operands, if we know them.  */
  if (flag_verbose_asm)
    FUNC13 (operands, oporder, ops);
  if (flag_print_asm_name)
    FUNC12 ();

  FUNC16 ('\n', asm_out_file);
}