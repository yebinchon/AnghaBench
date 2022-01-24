#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct TYPE_7__ {int reg_type; char* reg_name; int /*<<< orphan*/  reg_num; } ;
typedef  TYPE_2__ reg_entry ;
struct TYPE_10__ {int code; char* str; TYPE_2__* reg; } ;
struct TYPE_9__ {size_t mem_operands; int* types; TYPE_2__ const* index_reg; int /*<<< orphan*/  reg_operands; TYPE_1__* op; TYPE_2__ const* base_reg; int /*<<< orphan*/ ** seg; } ;
struct TYPE_8__ {char* disp; int is_mem; int /*<<< orphan*/  in_bracket; int /*<<< orphan*/  in_offset; TYPE_2__* reg; } ;
struct TYPE_6__ {TYPE_2__ const* regs; } ;

/* Variables and functions */
 int BaseIndex ; 
 scalar_t__ REGNAM_AX ; 
 scalar_t__ REGNAM_EAX ; 
 int Reg16 ; 
 int SReg2 ; 
 int SReg3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  T_BYTE 137 
#define  T_CONST 136 
#define  T_DWORD 135 
#define  T_FWORD 134 
#define  T_ID 133 
 int const T_PTR ; 
#define  T_QWORD 132 
#define  T_REG 131 
#define  T_TBYTE 130 
#define  T_WORD 129 
#define  T_XMMWORD 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  absolute_section ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cs ; 
 TYPE_5__ cur_token ; 
 int /*<<< orphan*/  ds ; 
 int /*<<< orphan*/  es ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  fs ; 
 int /*<<< orphan*/  gs ; 
 TYPE_4__ i ; 
 scalar_t__ i386_regtab ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int const) ; 
 TYPE_3__ intel_parser ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  ss ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/ * FUNC13 (char*) ; 
 size_t this_operand ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15 (void)
{
  switch (cur_token.code)
    {
    /* e11  ( expr ) */
    case '(':
      FUNC8 ('(');
      FUNC10 (intel_parser.disp, "(");

      if (FUNC7 () && FUNC8 (')'))
	{
	  FUNC10 (intel_parser.disp, ")");
	  return 1;
	}
      return 0;

    /* e11  [ expr ] */
    case '[':
      return FUNC6 ();

    /* e11  $
	    | .  */
    case '.':
      FUNC10 (intel_parser.disp, cur_token.str);
      FUNC8 (cur_token.code);

      /* Mark as a memory operand only if it's not already known to be an
	 offset expression.  */
      if (!intel_parser.in_offset)
	intel_parser.is_mem = 1;

      return 1;

    /* e11  register  */
    case T_REG:
      {
	const reg_entry *reg = intel_parser.reg = cur_token.reg;

	FUNC8 (T_REG);

	/* Check for segment change.  */
	if (cur_token.code == ':')
	  {
	    if (!(reg->reg_type & (SReg2 | SReg3)))
	      {
		FUNC2 (FUNC1("`%s' is not a valid segment register"),
			reg->reg_name);
		return 0;
	      }
	    else if (i.seg[i.mem_operands])
	      FUNC3 (FUNC1("Extra segment override ignored"));
	    else
	      {
		if (!intel_parser.in_offset)
		  intel_parser.is_mem = 1;
		switch (reg->reg_num)
		  {
		  case 0:
		    i.seg[i.mem_operands] = &es;
		    break;
		  case 1:
		    i.seg[i.mem_operands] = &cs;
		    break;
		  case 2:
		    i.seg[i.mem_operands] = &ss;
		    break;
		  case 3:
		    i.seg[i.mem_operands] = &ds;
		    break;
		  case 4:
		    i.seg[i.mem_operands] = &fs;
		    break;
		  case 5:
		    i.seg[i.mem_operands] = &gs;
		    break;
		  }
	      }
	  }

	/* Not a segment register. Check for register scaling.  */
	else if (cur_token.code == '*')
	  {
	    if (!intel_parser.in_bracket)
	      {
		FUNC2 (FUNC1("Register scaling only allowed in memory operands"));
		return 0;
	      }

	    if (reg->reg_type & Reg16) /* Disallow things like [si*1]. */
	      reg = i386_regtab + REGNAM_AX + 4; /* sp is invalid as index */
	    else if (i.index_reg)
	      reg = i386_regtab + REGNAM_EAX + 4; /* esp is invalid as index */

	    /* What follows must be a valid scale.  */
	    FUNC8 ('*');
	    i.index_reg = reg;
	    i.types[this_operand] |= BaseIndex;

	    /* Set the scale after setting the register (otherwise,
	       i386_scale will complain)  */
	    if (cur_token.code == '+' || cur_token.code == '-')
	      {
		char *str, sign = cur_token.code;
		FUNC8 (cur_token.code);
		if (cur_token.code != T_CONST)
		  {
		    FUNC2 (FUNC1("Syntax error: Expecting a constant, got `%s'"),
			    cur_token.str);
		    return 0;
		  }
		str = (char *) FUNC14 (FUNC12 (cur_token.str) + 2);
		FUNC11 (str + 1, cur_token.str);
		*str = sign;
		if (!FUNC5 (str))
		  return 0;
		FUNC4 (str);
	      }
	    else if (!FUNC5 (cur_token.str))
	      return 0;
	    FUNC8 (cur_token.code);
	  }

	/* No scaling. If this is a memory operand, the register is either a
	   base register (first occurrence) or an index register (second
	   occurrence).  */
	else if (intel_parser.in_bracket)
	  {

	    if (!i.base_reg)
	      i.base_reg = reg;
	    else if (!i.index_reg)
	      i.index_reg = reg;
	    else
	      {
		FUNC2 (FUNC1("Too many register references in memory operand"));
		return 0;
	      }

	    i.types[this_operand] |= BaseIndex;
	  }

	/* It's neither base nor index.  */
	else if (!intel_parser.in_offset && !intel_parser.is_mem)
	  {
	    i.types[this_operand] |= reg->reg_type & ~BaseIndex;
	    i.op[this_operand].regs = reg;
	    i.reg_operands++;
	  }
	else
	  {
	    FUNC2 (FUNC1("Invalid use of register"));
	    return 0;
	  }

	/* Since registers are not part of the displacement string (except
	   when we're parsing offset operands), we may need to remove any
	   preceding '+' from the displacement string.  */
	if (*intel_parser.disp != '\0'
	    && !intel_parser.in_offset)
	  {
	    char *s = intel_parser.disp;
	    s += FUNC12 (s) - 1;
	    if (*s == '+')
	      *s = '\0';
	  }

	return 1;
      }

    /* e11  BYTE
	    | WORD
	    | DWORD
	    | FWORD
	    | QWORD
	    | TBYTE
	    | OWORD
	    | XMMWORD  */
    case T_BYTE:
    case T_WORD:
    case T_DWORD:
    case T_FWORD:
    case T_QWORD:
    case T_TBYTE:
    case T_XMMWORD:
      FUNC8 (cur_token.code);

      if (cur_token.code == T_PTR)
	return 1;

      /* It must have been an identifier.  */
      FUNC9 ();
      cur_token.code = T_ID;
      /* FALLTHRU */

    /* e11  id
	    | constant  */
    case T_ID:
      if (!intel_parser.in_offset && intel_parser.is_mem <= 0)
	{
	  symbolS *symbolP;

	  /* The identifier represents a memory reference only if it's not
	     preceded by an offset modifier and if it's not an equate.  */
	  symbolP = FUNC13(cur_token.str);
	  if (!symbolP || FUNC0(symbolP) != absolute_section)
	    intel_parser.is_mem = 1;
	}
	/* FALLTHRU */

    case T_CONST:
    case '-':
    case '+':
      {
	char *save_str, sign = 0;

	/* Allow constants that start with `+' or `-'.  */
	if (cur_token.code == '-' || cur_token.code == '+')
	  {
	    sign = cur_token.code;
	    FUNC8 (cur_token.code);
	    if (cur_token.code != T_CONST)
	      {
		FUNC2 (FUNC1("Syntax error: Expecting a constant, got `%s'"),
			cur_token.str);
		return 0;
	      }
	  }

	save_str = (char *) FUNC14 (FUNC12 (cur_token.str) + 2);
	FUNC11 (save_str + !!sign, cur_token.str);
	if (sign)
	  *save_str = sign;

	/* Get the next token to check for register scaling.  */
	FUNC8 (cur_token.code);

	/* Check if this constant is a scaling factor for an
	   index register.  */
	if (cur_token.code == '*')
	  {
	    if (FUNC8 ('*') && cur_token.code == T_REG)
	      {
		const reg_entry *reg = cur_token.reg;

		if (!intel_parser.in_bracket)
		  {
		    FUNC2 (FUNC1("Register scaling only allowed "
			      "in memory operands"));
		    return 0;
		  }

		 /* Disallow things like [1*si].
		    sp and esp are invalid as index.  */
		if (reg->reg_type & Reg16)
		  reg = i386_regtab + REGNAM_AX + 4;
		else if (i.index_reg)
		  reg = i386_regtab + REGNAM_EAX + 4;

		/* The constant is followed by `* reg', so it must be
		   a valid scale.  */
		i.index_reg = reg;
		i.types[this_operand] |= BaseIndex;

		/* Set the scale after setting the register (otherwise,
		   i386_scale will complain)  */
		if (!FUNC5 (save_str))
		  return 0;
		FUNC8 (T_REG);

		/* Since registers are not part of the displacement
		   string, we may need to remove any preceding '+' from
		   the displacement string.  */
		if (*intel_parser.disp != '\0')
		  {
		    char *s = intel_parser.disp;
		    s += FUNC12 (s) - 1;
		    if (*s == '+')
		      *s = '\0';
		  }

		FUNC4 (save_str);

		return 1;
	      }

	    /* The constant was not used for register scaling. Since we have
	       already consumed the token following `*' we now need to put it
	       back in the stream.  */
	    FUNC9 ();
	  }

	/* Add the constant to the displacement string.  */
	FUNC10 (intel_parser.disp, save_str);
	FUNC4 (save_str);

	return 1;
      }
    }

  FUNC2 (FUNC1("Unrecognized token '%s'"), cur_token.str);
  return 0;
}