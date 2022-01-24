#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_7__ {int type; int /*<<< orphan*/  keyword; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_8__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;

/* Variables and functions */
 int ARRAY_REF ; 
 int BIT_AND_EXPR ; 
 int BIT_IOR_EXPR ; 
 int BIT_NOT_EXPR ; 
 int BIT_XOR_EXPR ; 
 int CALL_EXPR ; 
 int COMPONENT_REF ; 
 int COMPOUND_EXPR ; 
#define  CPP_AND 166 
#define  CPP_AND_AND 165 
#define  CPP_AND_EQ 164 
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_CLOSE_SQUARE ; 
#define  CPP_COMMA 163 
#define  CPP_COMPL 162 
#define  CPP_DEREF 161 
#define  CPP_DEREF_STAR 160 
#define  CPP_DIV 159 
#define  CPP_DIV_EQ 158 
#define  CPP_EQ 157 
#define  CPP_EQ_EQ 156 
#define  CPP_GREATER 155 
#define  CPP_GREATER_EQ 154 
#define  CPP_KEYWORD 153 
#define  CPP_LESS 152 
#define  CPP_LESS_EQ 151 
#define  CPP_LSHIFT 150 
#define  CPP_LSHIFT_EQ 149 
#define  CPP_MINUS 148 
#define  CPP_MINUS_EQ 147 
#define  CPP_MINUS_MINUS 146 
#define  CPP_MOD 145 
#define  CPP_MOD_EQ 144 
#define  CPP_MULT 143 
#define  CPP_MULT_EQ 142 
#define  CPP_NOT 141 
#define  CPP_NOT_EQ 140 
#define  CPP_OPEN_PAREN 139 
#define  CPP_OPEN_SQUARE 138 
#define  CPP_OR 137 
#define  CPP_OR_EQ 136 
#define  CPP_OR_OR 135 
#define  CPP_PLUS 134 
#define  CPP_PLUS_EQ 133 
#define  CPP_PLUS_PLUS 132 
#define  CPP_RSHIFT 131 
#define  CPP_RSHIFT_EQ 130 
#define  CPP_XOR 129 
#define  CPP_XOR_EQ 128 
 int DELETE_EXPR ; 
 int EQ_EXPR ; 
 int GE_EXPR ; 
 int GT_EXPR ; 
 int LE_EXPR ; 
 int LSHIFT_EXPR ; 
 int LT_EXPR ; 
 int MEMBER_REF ; 
 int MINUS_EXPR ; 
 int MULT_EXPR ; 
 int NEW_EXPR ; 
 int NE_EXPR ; 
 int NOP_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int PLUS_EXPR ; 
 int POSTINCREMENT_EXPR ; 
 int PREDECREMENT_EXPR ; 
 int /*<<< orphan*/  RID_DELETE ; 
 int /*<<< orphan*/  RID_NEW ; 
 int RSHIFT_EXPR ; 
 int TRUNC_DIV_EXPR ; 
 int TRUNC_MOD_EXPR ; 
 int TRUTH_ANDIF_EXPR ; 
 int TRUTH_NOT_EXPR ; 
 int TRUTH_ORIF_EXPR ; 
 int VEC_DELETE_EXPR ; 
 int VEC_NEW_EXPR ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ error_mark_node ; 

__attribute__((used)) static tree
FUNC6 (cp_parser* parser)
{
  tree id = NULL_TREE;
  cp_token *token;

  /* Peek at the next token.  */
  token = FUNC3 (parser->lexer);
  /* Figure out which operator we have.  */
  switch (token->type)
    {
    case CPP_KEYWORD:
      {
	enum tree_code op;

	/* The keyword should be either `new' or `delete'.  */
	if (token->keyword == RID_NEW)
	  op = NEW_EXPR;
	else if (token->keyword == RID_DELETE)
	  op = DELETE_EXPR;
	else
	  break;

	/* Consume the `new' or `delete' token.  */
	FUNC2 (parser->lexer);

	/* Peek at the next token.  */
	token = FUNC3 (parser->lexer);
	/* If it's a `[' token then this is the array variant of the
	   operator.  */
	if (token->type == CPP_OPEN_SQUARE)
	  {
	    /* Consume the `[' token.  */
	    FUNC2 (parser->lexer);
	    /* Look for the `]' token.  */
	    FUNC5 (parser, CPP_CLOSE_SQUARE, "`]'");
	    id = FUNC1 (op == NEW_EXPR
			      ? VEC_NEW_EXPR : VEC_DELETE_EXPR);
	  }
	/* Otherwise, we have the non-array variant.  */
	else
	  id = FUNC1 (op);

	return id;
      }

    case CPP_PLUS:
      id = FUNC1 (PLUS_EXPR);
      break;

    case CPP_MINUS:
      id = FUNC1 (MINUS_EXPR);
      break;

    case CPP_MULT:
      id = FUNC1 (MULT_EXPR);
      break;

    case CPP_DIV:
      id = FUNC1 (TRUNC_DIV_EXPR);
      break;

    case CPP_MOD:
      id = FUNC1 (TRUNC_MOD_EXPR);
      break;

    case CPP_XOR:
      id = FUNC1 (BIT_XOR_EXPR);
      break;

    case CPP_AND:
      id = FUNC1 (BIT_AND_EXPR);
      break;

    case CPP_OR:
      id = FUNC1 (BIT_IOR_EXPR);
      break;

    case CPP_COMPL:
      id = FUNC1 (BIT_NOT_EXPR);
      break;

    case CPP_NOT:
      id = FUNC1 (TRUTH_NOT_EXPR);
      break;

    case CPP_EQ:
      id = FUNC0 (NOP_EXPR);
      break;

    case CPP_LESS:
      id = FUNC1 (LT_EXPR);
      break;

    case CPP_GREATER:
      id = FUNC1 (GT_EXPR);
      break;

    case CPP_PLUS_EQ:
      id = FUNC0 (PLUS_EXPR);
      break;

    case CPP_MINUS_EQ:
      id = FUNC0 (MINUS_EXPR);
      break;

    case CPP_MULT_EQ:
      id = FUNC0 (MULT_EXPR);
      break;

    case CPP_DIV_EQ:
      id = FUNC0 (TRUNC_DIV_EXPR);
      break;

    case CPP_MOD_EQ:
      id = FUNC0 (TRUNC_MOD_EXPR);
      break;

    case CPP_XOR_EQ:
      id = FUNC0 (BIT_XOR_EXPR);
      break;

    case CPP_AND_EQ:
      id = FUNC0 (BIT_AND_EXPR);
      break;

    case CPP_OR_EQ:
      id = FUNC0 (BIT_IOR_EXPR);
      break;

    case CPP_LSHIFT:
      id = FUNC1 (LSHIFT_EXPR);
      break;

    case CPP_RSHIFT:
      id = FUNC1 (RSHIFT_EXPR);
      break;

    case CPP_LSHIFT_EQ:
      id = FUNC0 (LSHIFT_EXPR);
      break;

    case CPP_RSHIFT_EQ:
      id = FUNC0 (RSHIFT_EXPR);
      break;

    case CPP_EQ_EQ:
      id = FUNC1 (EQ_EXPR);
      break;

    case CPP_NOT_EQ:
      id = FUNC1 (NE_EXPR);
      break;

    case CPP_LESS_EQ:
      id = FUNC1 (LE_EXPR);
      break;

    case CPP_GREATER_EQ:
      id = FUNC1 (GE_EXPR);
      break;

    case CPP_AND_AND:
      id = FUNC1 (TRUTH_ANDIF_EXPR);
      break;

    case CPP_OR_OR:
      id = FUNC1 (TRUTH_ORIF_EXPR);
      break;

    case CPP_PLUS_PLUS:
      id = FUNC1 (POSTINCREMENT_EXPR);
      break;

    case CPP_MINUS_MINUS:
      id = FUNC1 (PREDECREMENT_EXPR);
      break;

    case CPP_COMMA:
      id = FUNC1 (COMPOUND_EXPR);
      break;

    case CPP_DEREF_STAR:
      id = FUNC1 (MEMBER_REF);
      break;

    case CPP_DEREF:
      id = FUNC1 (COMPONENT_REF);
      break;

    case CPP_OPEN_PAREN:
      /* Consume the `('.  */
      FUNC2 (parser->lexer);
      /* Look for the matching `)'.  */
      FUNC5 (parser, CPP_CLOSE_PAREN, "`)'");
      return FUNC1 (CALL_EXPR);

    case CPP_OPEN_SQUARE:
      /* Consume the `['.  */
      FUNC2 (parser->lexer);
      /* Look for the matching `]'.  */
      FUNC5 (parser, CPP_CLOSE_SQUARE, "`]'");
      return FUNC1 (ARRAY_REF);

    default:
      /* Anything else is an error.  */
      break;
    }

  /* If we have selected an identifier, we need to consume the
     operator token.  */
  if (id)
    FUNC2 (parser->lexer);
  /* Otherwise, no valid operator name was present.  */
  else
    {
      FUNC4 (parser, "expected operator");
      id = error_mark_node;
    }

  return id;
}