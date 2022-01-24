#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_6__ {scalar_t__ value; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
struct TYPE_4__ {scalar_t__ value; } ;

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
 int /*<<< orphan*/  CPP_SEMICOLON ; 
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
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int TRUNC_DIV_EXPR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__ FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ integer_one_node ; 

__attribute__((used)) static void
FUNC12 (c_parser *parser)
{
  tree lhs, rhs;
  tree stmt;
  enum tree_code code;

  FUNC9 (parser);

  lhs = FUNC11 (parser).value;
  switch (FUNC0 (lhs))
    {
    case ERROR_MARK:
    saw_error:
      FUNC8 (parser);
      return;

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
      switch (FUNC7 (parser)->type)
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

      FUNC4 (parser);
      rhs = FUNC6 (parser).value;
      break;
    }
  stmt = FUNC3 (code, lhs, rhs);
  if (stmt != error_mark_node)
    FUNC2 (stmt);
  FUNC10 (parser, CPP_SEMICOLON, "expected %<;%>");
}