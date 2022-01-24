#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_9__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  int /*<<< orphan*/  cp_token ;
struct TYPE_10__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;
struct TYPE_11__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int BIT_AND_EXPR ; 
 int BIT_IOR_EXPR ; 
 int BIT_XOR_EXPR ; 
#define  CPP_AND_EQ 141 
#define  CPP_DIV_EQ 140 
#define  CPP_LSHIFT_EQ 139 
#define  CPP_MINUS_EQ 138 
#define  CPP_MULT_EQ 137 
#define  CPP_OR_EQ 136 
#define  CPP_PLUS_EQ 135 
#define  CPP_RSHIFT_EQ 134 
#define  CPP_XOR_EQ 133 
#define  ERROR_MARK 132 
 int LSHIFT_EXPR ; 
 int MINUS_EXPR ; 
 int MULT_EXPR ; 
 int PLUS_EXPR ; 
#define  POSTDECREMENT_EXPR 131 
#define  POSTINCREMENT_EXPR 130 
#define  PREDECREMENT_EXPR 129 
#define  PREINCREMENT_EXPR 128 
 int RSHIFT_EXPR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TRUNC_DIV_EXPR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_one_node ; 

__attribute__((used)) static void
FUNC11 (cp_parser *parser, cp_token *pragma_tok)
{
  tree lhs, rhs;
  enum tree_code code;

  FUNC7 (parser, pragma_tok);

  lhs = FUNC9 (parser, /*address_p=*/false,
				    /*cast_p=*/false);
  switch (FUNC0 (lhs))
    {
    case ERROR_MARK:
      goto saw_error;

    case PREINCREMENT_EXPR:
    case POSTINCREMENT_EXPR:
      lhs = FUNC1 (lhs, 0);
      code = PLUS_EXPR;
      rhs = integer_one_node;
      break;

    case PREDECREMENT_EXPR:
    case POSTDECREMENT_EXPR:
      lhs = FUNC1 (lhs, 0);
      code = MINUS_EXPR;
      rhs = integer_one_node;
      break;

    default:
      switch (FUNC3 (parser->lexer)->type)
	{
	case CPP_MULT_EQ:
	  code = MULT_EXPR;
	  break;
	case CPP_DIV_EQ:
	  code = TRUNC_DIV_EXPR;
	  break;
	case CPP_PLUS_EQ:
	  code = PLUS_EXPR;
	  break;
	case CPP_MINUS_EQ:
	  code = MINUS_EXPR;
	  break;
	case CPP_LSHIFT_EQ:
	  code = LSHIFT_EXPR;
	  break;
	case CPP_RSHIFT_EQ:
	  code = RSHIFT_EXPR;
	  break;
	case CPP_AND_EQ:
	  code = BIT_AND_EXPR;
	  break;
	case CPP_OR_EQ:
	  code = BIT_IOR_EXPR;
	  break;
	case CPP_XOR_EQ:
	  code = BIT_XOR_EXPR;
	  break;
	default:
	  FUNC5 (parser,
			   "invalid operator for %<#pragma omp atomic%>");
	  goto saw_error;
	}
      FUNC2 (parser->lexer);

      rhs = FUNC6 (parser, false);
      if (rhs == error_mark_node)
	goto saw_error;
      break;
    }
  FUNC10 (code, lhs, rhs);
  FUNC4 (parser);
  return;

 saw_error:
  FUNC8 (parser);
}