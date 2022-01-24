#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_10__ {int type; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_11__ {int integral_constant_expression_p; int non_integral_constant_expression_p; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;
typedef  int /*<<< orphan*/  cp_id_kind ;

/* Variables and functions */
#define  CPP_CLOSE_PAREN 130 
 int const CPP_COMMA ; 
 int const CPP_DEREF ; 
#define  CPP_DOT 129 
 int const CPP_OPEN_PAREN ; 
#define  CPP_OPEN_SQUARE 128 
 int /*<<< orphan*/  OFFSETOF_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int const,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int const,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_pointer_node ; 
 scalar_t__ processing_template_decl ; 
 int /*<<< orphan*/  size_type_node ; 

__attribute__((used)) static tree
FUNC11 (cp_parser *parser)
{
  int save_ice_p, save_non_ice_p;
  tree type, expr;
  cp_id_kind dummy;

  /* We're about to accept non-integral-constant things, but will
     definitely yield an integral constant expression.  Save and
     restore these values around our local parsing.  */
  save_ice_p = parser->integral_constant_expression_p;
  save_non_ice_p = parser->non_integral_constant_expression_p;

  /* Consume the "__builtin_offsetof" token.  */
  FUNC3 (parser->lexer);
  /* Consume the opening `('.  */
  FUNC7 (parser, CPP_OPEN_PAREN, "`('");
  /* Parse the type-id.  */
  type = FUNC9 (parser);
  /* Look for the `,'.  */
  FUNC7 (parser, CPP_COMMA, "`,'");

  /* Build the (type *)null that begins the traditional offsetof macro.  */
  expr = FUNC2 (FUNC1 (type), null_pointer_node);

  /* Parse the offsetof-member-designator.  We begin as if we saw "expr->".  */
  expr = FUNC5 (parser, CPP_DEREF, expr,
						 true, &dummy);
  while (true)
    {
      cp_token *token = FUNC4 (parser->lexer);
      switch (token->type)
	{
	case CPP_OPEN_SQUARE:
	  /* offsetof-member-designator "[" expression "]" */
	  expr = FUNC6 (parser, expr, true);
	  break;

	case CPP_DOT:
	  /* offsetof-member-designator "." identifier */
	  FUNC3 (parser->lexer);
	  expr = FUNC5 (parser, CPP_DOT, expr,
							 true, &dummy);
	  break;

	case CPP_CLOSE_PAREN:
	  /* Consume the ")" token.  */
	  FUNC3 (parser->lexer);
	  goto success;

	default:
	  /* Error.  We know the following require will fail, but
	     that gives the proper error message.  */
	  FUNC7 (parser, CPP_CLOSE_PAREN, "`)'");
	  FUNC8 (parser, true, false, true);
	  expr = error_mark_node;
	  goto failure;
	}
    }

 success:
  /* If we're processing a template, we can't finish the semantics yet.
     Otherwise we can fold the entire expression now.  */
  if (processing_template_decl)
    expr = FUNC0 (OFFSETOF_EXPR, size_type_node, expr);
  else
    expr = FUNC10 (expr);

 failure:
  parser->integral_constant_expression_p = save_ice_p;
  parser->non_integral_constant_expression_p = save_non_ice_p;

  return expr;
}