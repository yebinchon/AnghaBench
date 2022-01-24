#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_9__ {scalar_t__ type; int keyword; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_10__ {int /*<<< orphan*/  in_switch_statement_p; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_COLON ; 
 scalar_t__ CPP_ELLIPSIS ; 
 scalar_t__ CPP_KEYWORD ; 
 scalar_t__ CPP_NAME ; 
 int /*<<< orphan*/  NULL_TREE ; 
#define  RID_CASE 129 
#define  RID_DEFAULT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (cp_parser* parser)
{
  cp_token *token;

  /* The next token should be an identifier.  */
  token = FUNC1 (parser->lexer);
  if (token->type != CPP_NAME
      && token->type != CPP_KEYWORD)
    {
      FUNC3 (parser, "expected labeled-statement");
      return;
    }

  switch (token->keyword)
    {
    case RID_CASE:
      {
	tree expr, expr_hi;
	cp_token *ellipsis;

	/* Consume the `case' token.  */
	FUNC0 (parser->lexer);
	/* Parse the constant-expression.  */
	expr = FUNC2 (parser,
					      /*allow_non_constant_p=*/false,
					      NULL);

	ellipsis = FUNC1 (parser->lexer);
	if (ellipsis->type == CPP_ELLIPSIS)
	  {
	    /* Consume the `...' token.  */
	    FUNC0 (parser->lexer);
	    expr_hi =
	      FUNC2 (parser,
					     /*allow_non_constant_p=*/false,
					     NULL);
	    /* We don't need to emit warnings here, as the common code
	       will do this for us.  */
	  }
	else
	  expr_hi = NULL_TREE;

	if (parser->in_switch_statement_p)
	  FUNC7 (expr, expr_hi);
	else
	  FUNC6 ("case label %qE not within a switch statement", expr);
      }
      break;

    case RID_DEFAULT:
      /* Consume the `default' token.  */
      FUNC0 (parser->lexer);

      if (parser->in_switch_statement_p)
	FUNC7 (NULL_TREE, NULL_TREE);
      else
	FUNC6 ("case label not within a switch statement");
      break;

    default:
      /* Anything else must be an ordinary label.  */
      FUNC8 (FUNC4 (parser));
      break;
    }

  /* Require the `:' token.  */
  FUNC5 (parser, CPP_COLON, "`:'");
}