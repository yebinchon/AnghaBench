#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum rid { ____Placeholder_rid } rid ;
struct TYPE_14__ {int keyword; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_15__ {unsigned char in_statement; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_KEYWORD ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 void* IN_ITERATION_STMT ; 
 int /*<<< orphan*/  NULL_TREE ; 
#define  RID_DO 130 
#define  RID_FOR 129 
#define  RID_WHILE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int const,char*) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC21 (cp_parser* parser)
{
  cp_token *token;
  enum rid keyword;
/* APPLE LOCAL begin for-fsf-4_4 3274130 5295549 */ \
  tree statement, attributes;
/* APPLE LOCAL end for-fsf-4_4 3274130 5295549 */ \
  unsigned char in_statement;

/* APPLE LOCAL begin for-fsf-4_4 3274130 5295549 */ \
  /* Get the keyword at the start of the loop.  */
/* APPLE LOCAL end for-fsf-4_4 3274130 5295549 */ \
  token = FUNC11 (parser, CPP_KEYWORD, "iteration-statement");
  if (!token)
    return error_mark_node;

  /* Remember whether or not we are already within an iteration
     statement.  */
  in_statement = parser->in_statement;

/* APPLE LOCAL begin for-fsf-4_4 3274130 5295549 */ \
  /* Parse the attributes, if any.  */
  attributes = FUNC5 (parser);

/* APPLE LOCAL end for-fsf-4_4 3274130 5295549 */ \
  /* See what kind of keyword it is.  */
  keyword = token->keyword;
  switch (keyword)
    {
    case RID_WHILE:
      {
	tree condition;

	/* Begin the while-statement.  */
/* APPLE LOCAL begin for-fsf-4_4 3274130 5295549 */ \
	statement = FUNC2 (attributes);
/* APPLE LOCAL end for-fsf-4_4 3274130 5295549 */ \
	/* Look for the `('.  */
	FUNC11 (parser, CPP_OPEN_PAREN, "`('");
	/* Parse the condition.  */
	condition = FUNC6 (parser);
	FUNC20 (condition, statement);
	/* Look for the `)'.  */
	FUNC11 (parser, CPP_CLOSE_PAREN, "`)'");
	/* Parse the dependent statement.  */
	parser->in_statement = IN_ITERATION_STMT;
	FUNC4 (parser);
	parser->in_statement = in_statement;
	/* We're done with the while-statement.  */
	FUNC19 (statement);
      }
      break;

    case RID_DO:
      {
	tree expression;

	/* Begin the do-statement.  */
/* APPLE LOCAL begin for-fsf-4_4 3274130 5295549 */ \
	statement = FUNC0 (attributes);
/* APPLE LOCAL end for-fsf-4_4 3274130 5295549 */ \
	/* Parse the body of the do-statement.  */
	parser->in_statement = IN_ITERATION_STMT;
	FUNC10 (parser, NULL);
	parser->in_statement = in_statement;
	FUNC13 (statement);
	/* Look for the `while' keyword.  */
	FUNC12 (parser, RID_WHILE, "`while'");
	/* Look for the `('.  */
	FUNC11 (parser, CPP_OPEN_PAREN, "`('");
	/* Parse the expression.  */
	expression = FUNC8 (parser, /*cast_p=*/false);
	/* We're done with the do-statement.  */
	FUNC14 (expression, statement);
	/* Look for the `)'.  */
	FUNC11 (parser, CPP_CLOSE_PAREN, "`)'");
	/* Look for the `;'.  */
	FUNC11 (parser, CPP_SEMICOLON, "`;'");
      }
      break;

    case RID_FOR:
      {
	tree condition = NULL_TREE;
	tree expression = NULL_TREE;

	/* Begin the for-statement.  */
/* APPLE LOCAL begin for-fsf-4_4 3274130 5295549 */ \
	statement = FUNC1 (attributes);
/* APPLE LOCAL end for-fsf-4_4 3274130 5295549 */ \
	/* Look for the `('.  */
	FUNC11 (parser, CPP_OPEN_PAREN, "`('");
	/* Parse the initialization.  */
	FUNC9 (parser);
	FUNC17 (statement);

	/* If there's a condition, process it.  */
	if (FUNC3 (parser->lexer, CPP_SEMICOLON))
	  condition = FUNC6 (parser);
	FUNC15 (condition, statement);
	/* Look for the `;'.  */
	FUNC11 (parser, CPP_SEMICOLON, "`;'");

	/* If there's an expression, process it.  */
	if (FUNC3 (parser->lexer, CPP_CLOSE_PAREN))
	  expression = FUNC8 (parser, /*cast_p=*/false);
	FUNC16 (expression, statement);
	/* Look for the `)'.  */
	FUNC11 (parser, CPP_CLOSE_PAREN, "`)'");

	/* Parse the body of the for-statement.  */
	parser->in_statement = IN_ITERATION_STMT;
	FUNC4 (parser);
	parser->in_statement = in_statement;

	/* We're done with the for-statement.  */
	FUNC18 (statement);
      }
      break;

    default:
      FUNC7 (parser, "expected iteration-statement");
      statement = error_mark_node;
      break;
    }

  return statement;
}