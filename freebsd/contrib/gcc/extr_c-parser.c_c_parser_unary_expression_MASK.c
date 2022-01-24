#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct c_expr {void* original_code; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int type; int /*<<< orphan*/  keyword; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 int /*<<< orphan*/  BIT_NOT_EXPR ; 
 int /*<<< orphan*/  CONVERT_EXPR ; 
#define  CPP_AND 142 
#define  CPP_AND_AND 141 
#define  CPP_COMPL 140 
#define  CPP_KEYWORD 139 
#define  CPP_MINUS 138 
#define  CPP_MINUS_MINUS 137 
#define  CPP_MULT 136 
 int /*<<< orphan*/  CPP_NAME ; 
#define  CPP_NOT 135 
#define  CPP_PLUS 134 
#define  CPP_PLUS_PLUS 133 
 void* ERROR_MARK ; 
 int /*<<< orphan*/  IMAGPART_EXPR ; 
 int /*<<< orphan*/  NEGATE_EXPR ; 
 int /*<<< orphan*/  OPT_Wtraditional ; 
 int /*<<< orphan*/  PREDECREMENT_EXPR ; 
 int /*<<< orphan*/  PREINCREMENT_EXPR ; 
 int /*<<< orphan*/  REALPART_EXPR ; 
#define  RID_ALIGNOF 132 
#define  RID_EXTENSION 131 
#define  RID_IMAGPART 130 
#define  RID_REALPART 129 
#define  RID_SIZEOF 128 
 int /*<<< orphan*/  TRUTH_NOT_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct c_expr FUNC2 (int /*<<< orphan*/ *) ; 
 struct c_expr FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 struct c_expr FUNC8 (int /*<<< orphan*/ *) ; 
 struct c_expr FUNC9 (int /*<<< orphan*/ *) ; 
 struct c_expr FUNC10 (struct c_expr) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_system_header ; 
 struct c_expr FUNC13 (int /*<<< orphan*/ ,struct c_expr) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct c_expr
FUNC16 (c_parser *parser)
{
  int ext;
  struct c_expr ret, op;
  switch (FUNC7 (parser)->type)
    {
    case CPP_PLUS_PLUS:
      FUNC4 (parser);
      op = FUNC3 (parser, NULL);
      op = FUNC10 (op);
      return FUNC13 (PREINCREMENT_EXPR, op);
    case CPP_MINUS_MINUS:
      FUNC4 (parser);
      op = FUNC3 (parser, NULL);
      op = FUNC10 (op);
      return FUNC13 (PREDECREMENT_EXPR, op);
    case CPP_AND:
      FUNC4 (parser);
      return FUNC13 (ADDR_EXPR,
				    FUNC3 (parser, NULL));
    case CPP_MULT:
      FUNC4 (parser);
      op = FUNC3 (parser, NULL);
      op = FUNC10 (op);
      ret.value = FUNC0 (op.value, "unary *");
      ret.original_code = ERROR_MARK;
      return ret;
    case CPP_PLUS:
      FUNC4 (parser);
      if (!FUNC1 () && !in_system_header)
	FUNC15 (OPT_Wtraditional,
		 "traditional C rejects the unary plus operator");
      op = FUNC3 (parser, NULL);
      op = FUNC10 (op);
      return FUNC13 (CONVERT_EXPR, op);
    case CPP_MINUS:
      FUNC4 (parser);
      op = FUNC3 (parser, NULL);
      op = FUNC10 (op);
      return FUNC13 (NEGATE_EXPR, op);
    case CPP_COMPL:
      FUNC4 (parser);
      op = FUNC3 (parser, NULL);
      op = FUNC10 (op);
      return FUNC13 (BIT_NOT_EXPR, op);
    case CPP_NOT:
      FUNC4 (parser);
      op = FUNC3 (parser, NULL);
      op = FUNC10 (op);
      return FUNC13 (TRUTH_NOT_EXPR, op);
    case CPP_AND_AND:
      /* Refer to the address of a label as a pointer.  */
      FUNC4 (parser);
      if (FUNC6 (parser, CPP_NAME))
	{
	  ret.value = FUNC12
	    (FUNC7 (parser)->value);
	  FUNC4 (parser);
	}
      else
	{
	  FUNC5 (parser, "expected identifier");
	  ret.value = error_mark_node;
	}
	ret.original_code = ERROR_MARK;
	return ret;
    case CPP_KEYWORD:
      switch (FUNC7 (parser)->keyword)
	{
	case RID_SIZEOF:
	  return FUNC9 (parser);
	case RID_ALIGNOF:
	  return FUNC2 (parser);
	case RID_EXTENSION:
	  FUNC4 (parser);
	  ext = FUNC11 ();
	  ret = FUNC3 (parser, NULL);
	  FUNC14 (ext);
	  return ret;
	case RID_REALPART:
	  FUNC4 (parser);
	  op = FUNC3 (parser, NULL);
	  op = FUNC10 (op);
	  return FUNC13 (REALPART_EXPR, op);
	case RID_IMAGPART:
	  FUNC4 (parser);
	  op = FUNC3 (parser, NULL);
	  op = FUNC10 (op);
	  return FUNC13 (IMAGPART_EXPR, op);
	default:
	  return FUNC8 (parser);
	}
    default:
      return FUNC8 (parser);
    }
}