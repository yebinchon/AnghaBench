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
typedef  enum rid { ____Placeholder_rid } rid ;
struct TYPE_9__ {int keyword; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_10__ {int in_statement; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_KEYWORD ; 
 int /*<<< orphan*/  CPP_MULT ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
#define  IN_ITERATION_STMT 134 
#define  IN_OMP_BLOCK 133 
#define  IN_OMP_FOR 132 
 int IN_SWITCH_STMT ; 
 int /*<<< orphan*/  NULL_TREE ; 
#define  RID_BREAK 131 
#define  RID_CONTINUE 130 
#define  RID_GOTO 129 
#define  RID_RETURN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  cur_block ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  pedantic ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static tree
FUNC15 (cp_parser* parser)
{
  tree statement = error_mark_node;
  cp_token *token;
  enum rid keyword;

  /* Peek at the next token.  */
  token = FUNC6 (parser, CPP_KEYWORD, "jump-statement");
  if (!token)
    return error_mark_node;

  /* See what kind of keyword it is.  */
  keyword = token->keyword;
  switch (keyword)
    {
    case RID_BREAK:
      switch (parser->in_statement)
	{
	case 0:
	  FUNC7 ("break statement not within loop or switch");
	  break;
	default:
	  FUNC12 ((parser->in_statement & IN_SWITCH_STMT)
		      || parser->in_statement == IN_ITERATION_STMT);
	  statement = FUNC8 ();
	  break;
	case IN_OMP_BLOCK:
	  FUNC7 ("invalid exit from OpenMP structured block");
	  break;
	case IN_OMP_FOR:
	  FUNC7 ("break statement used with OpenMP for loop");
	  break;
	}
      FUNC6 (parser, CPP_SEMICOLON, "%<;%>");
      break;

    case RID_CONTINUE:
      switch (parser->in_statement & ~IN_SWITCH_STMT)
	{
	case 0:
	  FUNC7 ("continue statement not within a loop");
	  break;
	case IN_ITERATION_STMT:
	case IN_OMP_FOR:
	  statement = FUNC9 ();
	  break;
	case IN_OMP_BLOCK:
	  FUNC7 ("invalid exit from OpenMP structured block");
	  break;
	default:
	  FUNC13 ();
	}
      FUNC6 (parser, CPP_SEMICOLON, "%<;%>");
      break;

    case RID_RETURN:
      {
	tree expr;

	/* If the next token is a `;', then there is no
	   expression.  */
	if (FUNC2 (parser->lexer, CPP_SEMICOLON))
	  expr = FUNC4 (parser, /*cast_p=*/false);
	else
	  expr = NULL_TREE;
	/* Build the return-statement.  */
	statement = FUNC11 (expr);
	/* Look for the final `;'.  */
	FUNC6 (parser, CPP_SEMICOLON, "%<;%>");
      }
      break;

    case RID_GOTO:
      /* APPLE LOCAL begin blocks 6040305 (cb) */
      if (cur_block)
	FUNC7 ("goto not allowed in block literal");
      /* APPLE LOCAL end blocks 6040305 (cb) */
      /* Create the goto-statement.  */
      if (FUNC1 (parser->lexer, CPP_MULT))
	{
	  /* Issue a warning about this use of a GNU extension.  */
	  if (pedantic)
	    FUNC14 ("ISO C++ forbids computed gotos");
	  /* Consume the '*' token.  */
	  FUNC0 (parser->lexer);
	  /* Parse the dependent expression.  */
	  FUNC10 (FUNC4 (parser, /*cast_p=*/false));
	}
      else
	FUNC10 (FUNC5 (parser));
      /* Look for the final `;'.  */
      FUNC6 (parser, CPP_SEMICOLON, "%<;%>");
      break;

    default:
      FUNC3 (parser, "expected jump-statement");
      break;
    }

  return statement;
}