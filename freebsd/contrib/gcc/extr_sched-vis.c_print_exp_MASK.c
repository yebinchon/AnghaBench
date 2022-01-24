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

/* Variables and functions */
#define  ABS 184 
#define  AND 183 
#define  ASHIFT 182 
#define  ASHIFTRT 181 
 int BUF_LEN ; 
#define  CALL 180 
#define  COMPARE 179 
 int const CONST_INT ; 
#define  DIV 178 
#define  EQ 177 
#define  FFS 176 
#define  FIX 175 
#define  FLOAT 174 
#define  FLOAT_EXTEND 173 
#define  FLOAT_TRUNCATE 172 
#define  GE 171 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int const FUNC1 (scalar_t__) ; 
 char* FUNC2 (int const) ; 
#define  GEU 170 
#define  GT 169 
#define  GTU 168 
#define  IF_THEN_ELSE 167 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
#define  IOR 166 
#define  LE 165 
#define  LEU 164 
#define  LO_SUM 163 
#define  LSHIFTRT 162 
#define  LT 161 
#define  LTU 160 
#define  MINUS 159 
#define  MOD 158 
#define  MULT 157 
#define  NE 156 
#define  NEG 155 
#define  NOT 154 
 scalar_t__ NULL_RTX ; 
#define  PLUS 153 
#define  POST_DEC 152 
#define  POST_INC 151 
#define  PREFETCH 150 
#define  PRE_DEC 149 
#define  PRE_INC 148 
#define  ROTATE 147 
#define  ROTATERT 146 
#define  SIGN_EXTEND 145 
#define  SIGN_EXTRACT 144 
#define  SMAX 143 
#define  SMIN 142 
#define  SQRT 141 
 scalar_t__ FUNC4 (scalar_t__) ; 
#define  TRAP_IF 140 
#define  TRUNCATE 139 
#define  UDIV 138 
#define  UMAX 137 
#define  UMIN 136 
#define  UMOD 135 
#define  UNSIGNED_FIX 134 
#define  UNSIGNED_FLOAT 133 
#define  UNSPEC 132 
#define  UNSPEC_VOLATILE 131 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int FUNC6 (scalar_t__,int) ; 
#define  XOR 130 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
#define  ZERO_EXTEND 129 
#define  ZERO_EXTRACT 128 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,int) ; 
 char* FUNC11 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC13 (char *buf, rtx x, int verbose)
{
  char tmp[BUF_LEN];
  const char *st[4];
  char *cur = buf;
  const char *fun = (char *) 0;
  const char *sep;
  rtx op[4];
  int i;

  for (i = 0; i < 4; i++)
    {
      st[i] = (char *) 0;
      op[i] = NULL_RTX;
    }

  switch (FUNC1 (x))
    {
    case PLUS:
      op[0] = FUNC5 (x, 0);
      if (FUNC1 (FUNC5 (x, 1)) == CONST_INT
	  && FUNC3 (FUNC5 (x, 1)) < 0)
	{
	  st[1] = "-";
	  op[1] = FUNC0 (-FUNC3 (FUNC5 (x, 1)));
	}
      else
	{
	  st[1] = "+";
	  op[1] = FUNC5 (x, 1);
	}
      break;
    case LO_SUM:
      op[0] = FUNC5 (x, 0);
      st[1] = "+low(";
      op[1] = FUNC5 (x, 1);
      st[2] = ")";
      break;
    case MINUS:
      op[0] = FUNC5 (x, 0);
      st[1] = "-";
      op[1] = FUNC5 (x, 1);
      break;
    case COMPARE:
      fun = "cmp";
      op[0] = FUNC5 (x, 0);
      op[1] = FUNC5 (x, 1);
      break;
    case NEG:
      st[0] = "-";
      op[0] = FUNC5 (x, 0);
      break;
    case MULT:
      op[0] = FUNC5 (x, 0);
      st[1] = "*";
      op[1] = FUNC5 (x, 1);
      break;
    case DIV:
      op[0] = FUNC5 (x, 0);
      st[1] = "/";
      op[1] = FUNC5 (x, 1);
      break;
    case UDIV:
      fun = "udiv";
      op[0] = FUNC5 (x, 0);
      op[1] = FUNC5 (x, 1);
      break;
    case MOD:
      op[0] = FUNC5 (x, 0);
      st[1] = "%";
      op[1] = FUNC5 (x, 1);
      break;
    case UMOD:
      fun = "umod";
      op[0] = FUNC5 (x, 0);
      op[1] = FUNC5 (x, 1);
      break;
    case SMIN:
      fun = "smin";
      op[0] = FUNC5 (x, 0);
      op[1] = FUNC5 (x, 1);
      break;
    case SMAX:
      fun = "smax";
      op[0] = FUNC5 (x, 0);
      op[1] = FUNC5 (x, 1);
      break;
    case UMIN:
      fun = "umin";
      op[0] = FUNC5 (x, 0);
      op[1] = FUNC5 (x, 1);
      break;
    case UMAX:
      fun = "umax";
      op[0] = FUNC5 (x, 0);
      op[1] = FUNC5 (x, 1);
      break;
    case NOT:
      st[0] = "!";
      op[0] = FUNC5 (x, 0);
      break;
    case AND:
      op[0] = FUNC5 (x, 0);
      st[1] = "&";
      op[1] = FUNC5 (x, 1);
      break;
    case IOR:
      op[0] = FUNC5 (x, 0);
      st[1] = "|";
      op[1] = FUNC5 (x, 1);
      break;
    case XOR:
      op[0] = FUNC5 (x, 0);
      st[1] = "^";
      op[1] = FUNC5 (x, 1);
      break;
    case ASHIFT:
      op[0] = FUNC5 (x, 0);
      st[1] = "<<";
      op[1] = FUNC5 (x, 1);
      break;
    case LSHIFTRT:
      op[0] = FUNC5 (x, 0);
      st[1] = " 0>>";
      op[1] = FUNC5 (x, 1);
      break;
    case ASHIFTRT:
      op[0] = FUNC5 (x, 0);
      st[1] = ">>";
      op[1] = FUNC5 (x, 1);
      break;
    case ROTATE:
      op[0] = FUNC5 (x, 0);
      st[1] = "<-<";
      op[1] = FUNC5 (x, 1);
      break;
    case ROTATERT:
      op[0] = FUNC5 (x, 0);
      st[1] = ">->";
      op[1] = FUNC5 (x, 1);
      break;
    case ABS:
      fun = "abs";
      op[0] = FUNC5 (x, 0);
      break;
    case SQRT:
      fun = "sqrt";
      op[0] = FUNC5 (x, 0);
      break;
    case FFS:
      fun = "ffs";
      op[0] = FUNC5 (x, 0);
      break;
    case EQ:
      op[0] = FUNC5 (x, 0);
      st[1] = "==";
      op[1] = FUNC5 (x, 1);
      break;
    case NE:
      op[0] = FUNC5 (x, 0);
      st[1] = "!=";
      op[1] = FUNC5 (x, 1);
      break;
    case GT:
      op[0] = FUNC5 (x, 0);
      st[1] = ">";
      op[1] = FUNC5 (x, 1);
      break;
    case GTU:
      fun = "gtu";
      op[0] = FUNC5 (x, 0);
      op[1] = FUNC5 (x, 1);
      break;
    case LT:
      op[0] = FUNC5 (x, 0);
      st[1] = "<";
      op[1] = FUNC5 (x, 1);
      break;
    case LTU:
      fun = "ltu";
      op[0] = FUNC5 (x, 0);
      op[1] = FUNC5 (x, 1);
      break;
    case GE:
      op[0] = FUNC5 (x, 0);
      st[1] = ">=";
      op[1] = FUNC5 (x, 1);
      break;
    case GEU:
      fun = "geu";
      op[0] = FUNC5 (x, 0);
      op[1] = FUNC5 (x, 1);
      break;
    case LE:
      op[0] = FUNC5 (x, 0);
      st[1] = "<=";
      op[1] = FUNC5 (x, 1);
      break;
    case LEU:
      fun = "leu";
      op[0] = FUNC5 (x, 0);
      op[1] = FUNC5 (x, 1);
      break;
    case SIGN_EXTRACT:
      fun = (verbose) ? "sign_extract" : "sxt";
      op[0] = FUNC5 (x, 0);
      op[1] = FUNC5 (x, 1);
      op[2] = FUNC5 (x, 2);
      break;
    case ZERO_EXTRACT:
      fun = (verbose) ? "zero_extract" : "zxt";
      op[0] = FUNC5 (x, 0);
      op[1] = FUNC5 (x, 1);
      op[2] = FUNC5 (x, 2);
      break;
    case SIGN_EXTEND:
      fun = (verbose) ? "sign_extend" : "sxn";
      op[0] = FUNC5 (x, 0);
      break;
    case ZERO_EXTEND:
      fun = (verbose) ? "zero_extend" : "zxn";
      op[0] = FUNC5 (x, 0);
      break;
    case FLOAT_EXTEND:
      fun = (verbose) ? "float_extend" : "fxn";
      op[0] = FUNC5 (x, 0);
      break;
    case TRUNCATE:
      fun = (verbose) ? "trunc" : "trn";
      op[0] = FUNC5 (x, 0);
      break;
    case FLOAT_TRUNCATE:
      fun = (verbose) ? "float_trunc" : "ftr";
      op[0] = FUNC5 (x, 0);
      break;
    case FLOAT:
      fun = (verbose) ? "float" : "flt";
      op[0] = FUNC5 (x, 0);
      break;
    case UNSIGNED_FLOAT:
      fun = (verbose) ? "uns_float" : "ufl";
      op[0] = FUNC5 (x, 0);
      break;
    case FIX:
      fun = "fix";
      op[0] = FUNC5 (x, 0);
      break;
    case UNSIGNED_FIX:
      fun = (verbose) ? "uns_fix" : "ufx";
      op[0] = FUNC5 (x, 0);
      break;
    case PRE_DEC:
      st[0] = "--";
      op[0] = FUNC5 (x, 0);
      break;
    case PRE_INC:
      st[0] = "++";
      op[0] = FUNC5 (x, 0);
      break;
    case POST_DEC:
      op[0] = FUNC5 (x, 0);
      st[1] = "--";
      break;
    case POST_INC:
      op[0] = FUNC5 (x, 0);
      st[1] = "++";
      break;
    case CALL:
      st[0] = "call ";
      op[0] = FUNC5 (x, 0);
      if (verbose)
	{
	  st[1] = " argc:";
	  op[1] = FUNC5 (x, 1);
	}
      break;
    case IF_THEN_ELSE:
      st[0] = "{(";
      op[0] = FUNC5 (x, 0);
      st[1] = ")?";
      op[1] = FUNC5 (x, 1);
      st[2] = ":";
      op[2] = FUNC5 (x, 2);
      st[3] = "}";
      break;
    case TRAP_IF:
      fun = "trap_if";
      op[0] = FUNC4 (x);
      break;
    case PREFETCH:
      fun = "prefetch";
      op[0] = FUNC5 (x, 0);
      op[1] = FUNC5 (x, 1);
      op[2] = FUNC5 (x, 2);
      break;
    case UNSPEC:
    case UNSPEC_VOLATILE:
      {
	cur = FUNC11 (buf, cur, "unspec");
	if (FUNC1 (x) == UNSPEC_VOLATILE)
	  cur = FUNC11 (buf, cur, "/v");
	cur = FUNC11 (buf, cur, "[");
	sep = "";
	for (i = 0; i < FUNC8 (x, 0); i++)
	  {
	    FUNC9 (tmp, FUNC7 (x, 0, i), verbose);
	    cur = FUNC11 (buf, cur, sep);
	    cur = FUNC11 (buf, cur, tmp);
	    sep = ",";
	  }
	cur = FUNC11 (buf, cur, "] ");
	FUNC12 (tmp, "%d", FUNC6 (x, 1));
	cur = FUNC11 (buf, cur, tmp);
      }
      break;
    default:
      /* If (verbose) debug_rtx (x);  */
      st[0] = FUNC2 (FUNC1 (x));
      break;
    }

  /* Print this as a function?  */
  if (fun)
    {
      cur = FUNC11 (buf, cur, fun);
      cur = FUNC11 (buf, cur, "(");
    }

  for (i = 0; i < 4; i++)
    {
      if (st[i])
	cur = FUNC11 (buf, cur, st[i]);

      if (op[i])
	{
	  if (fun && i != 0)
	    cur = FUNC11 (buf, cur, ",");

	  FUNC10 (tmp, op[i], verbose);
	  cur = FUNC11 (buf, cur, tmp);
	}
    }

  if (fun)
    cur = FUNC11 (buf, cur, ")");
}