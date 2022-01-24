#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct c_expr {void* original_code; void* value; } ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
struct TYPE_3__ {int type; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_CLOSE_SQUARE ; 
#define  CPP_DEREF 133 
#define  CPP_DOT 132 
#define  CPP_MINUS_MINUS 131 
 int /*<<< orphan*/  CPP_NAME ; 
#define  CPP_OPEN_PAREN 130 
#define  CPP_OPEN_SQUARE 129 
#define  CPP_PLUS_PLUS 128 
 void* ERROR_MARK ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  POSTDECREMENT_EXPR ; 
 int /*<<< orphan*/  POSTINCREMENT_EXPR ; 
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct c_expr FUNC12 (struct c_expr) ; 
 void* error_mark_node ; 

__attribute__((used)) static struct c_expr
FUNC13 (c_parser *parser,
					   struct c_expr expr)
{
  tree ident, idx, exprlist;
  while (true)
    {
      switch (FUNC10 (parser)->type)
	{
	case CPP_OPEN_SQUARE:
	  /* Array reference.  */
	  FUNC5 (parser);
	  idx = FUNC8 (parser).value;
	  FUNC11 (parser, CPP_CLOSE_SQUARE,
				     "expected %<]%>");
	  expr.value = FUNC0 (expr.value, idx);
	  expr.original_code = ERROR_MARK;
	  break;
	case CPP_OPEN_PAREN:
	  /* Function call.  */
	  FUNC5 (parser);
	  if (FUNC9 (parser, CPP_CLOSE_PAREN))
	    exprlist = NULL_TREE;
	  else
	    exprlist = FUNC7 (parser, true);
	  FUNC11 (parser, CPP_CLOSE_PAREN,
				     "expected %<)%>");
	  expr.value = FUNC2 (expr.value, exprlist);
	  expr.original_code = ERROR_MARK;
	  break;
	case CPP_DOT:
	  /* Structure element reference.  */
	  FUNC5 (parser);
	  expr = FUNC12 (expr);
	  if (FUNC9 (parser, CPP_NAME))
	    ident = FUNC10 (parser)->value;
	  else
	    {
	      FUNC6 (parser, "expected identifier");
	      expr.value = error_mark_node;
	      expr.original_code = ERROR_MARK;
	      return expr;
	    }
	  FUNC5 (parser);
	  expr.value = FUNC1 (expr.value, ident);
	  expr.original_code = ERROR_MARK;
	  break;
	case CPP_DEREF:
	  /* Structure element reference.  */
	  FUNC5 (parser);
	  expr = FUNC12 (expr);
	  if (FUNC9 (parser, CPP_NAME))
	    ident = FUNC10 (parser)->value;
	  else
	    {
	      FUNC6 (parser, "expected identifier");
	      expr.value = error_mark_node;
	      expr.original_code = ERROR_MARK;
	      return expr;
	    }
	  FUNC5 (parser);
	  expr.value = FUNC1 (FUNC3 (expr.value,
								"->"), ident);
	  expr.original_code = ERROR_MARK;
	  break;
	case CPP_PLUS_PLUS:
	  /* Postincrement.  */
	  FUNC5 (parser);
	  expr = FUNC12 (expr);
	  expr.value = FUNC4 (POSTINCREMENT_EXPR, expr.value, 0);
	  expr.original_code = ERROR_MARK;
	  break;
	case CPP_MINUS_MINUS:
	  /* Postdecrement.  */
	  FUNC5 (parser);
	  expr = FUNC12 (expr);
	  expr.value = FUNC4 (POSTDECREMENT_EXPR, expr.value, 0);
	  expr.original_code = ERROR_MARK;
	  break;
	default:
	  return expr;
	}
    }
}