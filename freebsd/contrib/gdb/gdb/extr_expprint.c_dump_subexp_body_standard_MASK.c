#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ui_file {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int opcode; char string; scalar_t__ longconst; TYPE_2__* type; TYPE_2__* internalvar; TYPE_2__* symbol; TYPE_2__* block; scalar_t__ doubleconst; } ;

/* Variables and functions */
#define  BINOP_ADD 220 
#define  BINOP_ASSIGN 219 
#define  BINOP_ASSIGN_MODIFY 218 
#define  BINOP_BITWISE_AND 217 
#define  BINOP_BITWISE_IOR 216 
#define  BINOP_BITWISE_XOR 215 
#define  BINOP_COMMA 214 
#define  BINOP_CONCAT 213 
#define  BINOP_DIV 212 
#define  BINOP_END 211 
#define  BINOP_EQUAL 210 
#define  BINOP_EXCL 209 
#define  BINOP_EXP 208 
#define  BINOP_GEQ 207 
#define  BINOP_GTR 206 
#define  BINOP_IN 205 
#define  BINOP_INCL 204 
#define  BINOP_INTDIV 203 
#define  BINOP_LEQ 202 
#define  BINOP_LESS 201 
#define  BINOP_LOGICAL_AND 200 
#define  BINOP_LOGICAL_OR 199 
#define  BINOP_LSH 198 
#define  BINOP_MAX 197 
#define  BINOP_MIN 196 
#define  BINOP_MOD 195 
#define  BINOP_MUL 194 
#define  BINOP_NOTEQUAL 193 
#define  BINOP_RANGE 192 
#define  BINOP_REM 191 
#define  BINOP_REPEAT 190 
#define  BINOP_RSH 189 
#define  BINOP_SUB 188 
#define  BINOP_SUBSCRIPT 187 
#define  BINOP_VAL 186 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
#define  MULTI_SUBSCRIPT 185 
#define  OP_ARRAY 184 
#define  OP_BITSTRING 183 
#define  OP_BOOL 182 
#define  OP_COMPLEX 181 
#define  OP_DOUBLE 180 
#define  OP_EXPRSTRING 179 
#define  OP_F77_UNDETERMINED_ARGLIST 178 
#define  OP_FUNCALL 177 
#define  OP_INTERNALVAR 176 
#define  OP_LABELED 175 
#define  OP_LAST 174 
#define  OP_LONG 173 
#define  OP_M2_STRING 172 
#define  OP_NAME 171 
#define  OP_NULL 170 
#define  OP_REGISTER 169 
#define  OP_SCOPE 168 
#define  OP_STRING 167 
#define  OP_THIS 166 
#define  OP_TYPE 165 
#define  OP_VAR_VALUE 164 
#define  STRUCTOP_MEMBER 163 
#define  STRUCTOP_MPTR 162 
#define  STRUCTOP_PTR 161 
#define  STRUCTOP_STRUCT 160 
#define  TERNOP_COND 159 
#define  TERNOP_SLICE 158 
#define  TERNOP_SLICE_COUNT 157 
#define  UNOP_ABS 156 
#define  UNOP_ADDR 155 
#define  UNOP_CAP 154 
#define  UNOP_CARD 153 
#define  UNOP_CAST 152 
#define  UNOP_CHMAX 151 
#define  UNOP_CHMIN 150 
#define  UNOP_CHR 149 
#define  UNOP_COMPLEMENT 148 
#define  UNOP_FLOAT 147 
#define  UNOP_HIGH 146 
#define  UNOP_IND 145 
#define  UNOP_LENGTH 144 
#define  UNOP_LOGICAL_NOT 143 
#define  UNOP_LOWER 142 
#define  UNOP_MAX 141 
#define  UNOP_MEMVAL 140 
#define  UNOP_MIN 139 
#define  UNOP_NEG 138 
#define  UNOP_ODD 137 
#define  UNOP_ORD 136 
#define  UNOP_PLUS 135 
#define  UNOP_POSTDECREMENT 134 
#define  UNOP_POSTINCREMENT 133 
#define  UNOP_PREDECREMENT 132 
#define  UNOP_PREINCREMENT 131 
#define  UNOP_SIZEOF 130 
#define  UNOP_TRUNC 129 
#define  UNOP_UPPER 128 
 int FUNC2 (struct expression*,struct ui_file*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct ui_file*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,struct ui_file*,int /*<<< orphan*/ ) ; 

int
FUNC7 (struct expression *exp, 
			   struct ui_file *stream, int elt)
{
  int opcode = exp->elts[elt++].opcode;

  switch (opcode)
    {
    case TERNOP_COND:
    case TERNOP_SLICE:
    case TERNOP_SLICE_COUNT:
      elt = FUNC2 (exp, stream, elt);
    case BINOP_ADD:
    case BINOP_SUB:
    case BINOP_MUL:
    case BINOP_DIV:
    case BINOP_REM:
    case BINOP_MOD:
    case BINOP_LSH:
    case BINOP_RSH:
    case BINOP_LOGICAL_AND:
    case BINOP_LOGICAL_OR:
    case BINOP_BITWISE_AND:
    case BINOP_BITWISE_IOR:
    case BINOP_BITWISE_XOR:
    case BINOP_EQUAL:
    case BINOP_NOTEQUAL:
    case BINOP_LESS:
    case BINOP_GTR:
    case BINOP_LEQ:
    case BINOP_GEQ:
    case BINOP_REPEAT:
    case BINOP_ASSIGN:
    case BINOP_COMMA:
    case BINOP_SUBSCRIPT:
    case BINOP_EXP:
    case BINOP_MIN:
    case BINOP_MAX:
    case BINOP_INTDIV:
    case BINOP_ASSIGN_MODIFY:
    case BINOP_VAL:
    case BINOP_INCL:
    case BINOP_EXCL:
    case BINOP_CONCAT:
    case BINOP_IN:
    case BINOP_RANGE:
    case BINOP_END:
      elt = FUNC2 (exp, stream, elt);
    case UNOP_NEG:
    case UNOP_LOGICAL_NOT:
    case UNOP_COMPLEMENT:
    case UNOP_IND:
    case UNOP_ADDR:
    case UNOP_PREINCREMENT:
    case UNOP_POSTINCREMENT:
    case UNOP_PREDECREMENT:
    case UNOP_POSTDECREMENT:
    case UNOP_SIZEOF:
    case UNOP_PLUS:
    case UNOP_CAP:
    case UNOP_CHR:
    case UNOP_ORD:
    case UNOP_ABS:
    case UNOP_FLOAT:
    case UNOP_HIGH:
    case UNOP_MAX:
    case UNOP_MIN:
    case UNOP_ODD:
    case UNOP_TRUNC:
    case UNOP_LOWER:
    case UNOP_UPPER:
    case UNOP_LENGTH:
    case UNOP_CARD:
    case UNOP_CHMAX:
    case UNOP_CHMIN:
      elt = FUNC2 (exp, stream, elt);
      break;
    case OP_LONG:
      FUNC3 (stream, "Type @");
      FUNC4 (exp->elts[elt].type, stream);
      FUNC3 (stream, " (");
      FUNC6 (exp->elts[elt].type, NULL, stream, 0);
      FUNC3 (stream, "), value %ld (0x%lx)",
			(long) exp->elts[elt + 1].longconst,
			(long) exp->elts[elt + 1].longconst);
      elt += 3;
      break;
    case OP_DOUBLE:
      FUNC3 (stream, "Type @");
      FUNC4 (exp->elts[elt].type, stream);
      FUNC3 (stream, " (");
      FUNC6 (exp->elts[elt].type, NULL, stream, 0);
      FUNC3 (stream, "), value %g",
			(double) exp->elts[elt + 1].doubleconst);
      elt += 3;
      break;
    case OP_VAR_VALUE:
      FUNC3 (stream, "Block @");
      FUNC4 (exp->elts[elt].block, stream);
      FUNC3 (stream, ", symbol @");
      FUNC4 (exp->elts[elt + 1].symbol, stream);
      FUNC3 (stream, " (%s)",
			FUNC1 (exp->elts[elt + 1].symbol));
      elt += 3;
      break;
    case OP_LAST:
      FUNC3 (stream, "History element %ld",
			(long) exp->elts[elt].longconst);
      elt += 2;
      break;
    case OP_REGISTER:
      FUNC3 (stream, "Register %ld",
			(long) exp->elts[elt].longconst);
      elt += 2;
      break;
    case OP_INTERNALVAR:
      FUNC3 (stream, "Internal var @");
      FUNC4 (exp->elts[elt].internalvar, stream);
      FUNC3 (stream, " (%s)",
			exp->elts[elt].internalvar->name);
      elt += 2;
      break;
    case OP_FUNCALL:
      {
	int i, nargs;

	nargs = FUNC5 (exp->elts[elt].longconst);

	FUNC3 (stream, "Number of args: %d", nargs);
	elt += 2;

	for (i = 1; i <= nargs + 1; i++)
	  elt = FUNC2 (exp, stream, elt);
      }
      break;
    case OP_ARRAY:
      {
	int lower, upper;
	int i;

	lower = FUNC5 (exp->elts[elt].longconst);
	upper = FUNC5 (exp->elts[elt + 1].longconst);

	FUNC3 (stream, "Bounds [%d:%d]", lower, upper);
	elt += 3;

	for (i = 1; i <= upper - lower + 1; i++)
	  elt = FUNC2 (exp, stream, elt);
      }
      break;
    case UNOP_MEMVAL:
    case UNOP_CAST:
      FUNC3 (stream, "Type @");
      FUNC4 (exp->elts[elt].type, stream);
      FUNC3 (stream, " (");
      FUNC6 (exp->elts[elt].type, NULL, stream, 0);
      FUNC3 (stream, ")");
      elt = FUNC2 (exp, stream, elt + 2);
      break;
    case OP_TYPE:
      FUNC3 (stream, "Type @");
      FUNC4 (exp->elts[elt].type, stream);
      FUNC3 (stream, " (");
      FUNC6 (exp->elts[elt].type, NULL, stream, 0);
      FUNC3 (stream, ")");
      elt += 2;
      break;
    case STRUCTOP_STRUCT:
    case STRUCTOP_PTR:
      {
	char *elem_name;
	int len;

	len = FUNC5 (exp->elts[elt].longconst);
	elem_name = &exp->elts[elt + 1].string;

	FUNC3 (stream, "Element name: `%.*s'", len, elem_name);
	elt = FUNC2 (exp, stream, elt + 3 + FUNC0 (len + 1));
      }
      break;
    case OP_SCOPE:
      {
	char *elem_name;
	int len;

	FUNC3 (stream, "Type @");
	FUNC4 (exp->elts[elt].type, stream);
	FUNC3 (stream, " (");
	FUNC6 (exp->elts[elt].type, NULL, stream, 0);
	FUNC3 (stream, ") ");

	len = FUNC5 (exp->elts[elt + 1].longconst);
	elem_name = &exp->elts[elt + 2].string;

	FUNC3 (stream, "Field name: `%.*s'", len, elem_name);
	elt += 4 + FUNC0 (len + 1);
      }
      break;
    default:
    case OP_NULL:
    case STRUCTOP_MEMBER:
    case STRUCTOP_MPTR:
    case MULTI_SUBSCRIPT:
    case OP_F77_UNDETERMINED_ARGLIST:
    case OP_COMPLEX:
    case OP_STRING:
    case OP_BITSTRING:
    case OP_BOOL:
    case OP_M2_STRING:
    case OP_THIS:
    case OP_LABELED:
    case OP_NAME:
    case OP_EXPRSTRING:
      FUNC3 (stream, "Unknown format");
    }

  return elt;
}