#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  location_t ;
typedef  enum rid { ____Placeholder_rid } rid ;
struct TYPE_19__ {scalar_t__ type; int keyword; int /*<<< orphan*/  location; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_20__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;

/* Variables and functions */
 scalar_t__ CPP_COLON ; 
 scalar_t__ CPP_EOF ; 
 scalar_t__ CPP_KEYWORD ; 
 scalar_t__ CPP_NAME ; 
 scalar_t__ CPP_OPEN_BRACE ; 
 scalar_t__ CPP_PRAGMA ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 scalar_t__ NULL_TREE ; 
#define  RID_AT_CATCH 144 
#define  RID_AT_FINALLY 143 
#define  RID_AT_SYNCHRONIZED 142 
#define  RID_AT_THROW 141 
#define  RID_AT_TRY 140 
#define  RID_BREAK 139 
#define  RID_CASE 138 
#define  RID_CONTINUE 137 
#define  RID_DEFAULT 136 
#define  RID_DO 135 
#define  RID_FOR 134 
#define  RID_GOTO 133 
#define  RID_IF 132 
#define  RID_RETURN 131 
#define  RID_SWITCH 130 
#define  RID_TRY 129 
#define  RID_WHILE 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (TYPE_2__*,int*) ; 
 scalar_t__ FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  pragma_compound ; 
 int /*<<< orphan*/  pragma_stmt ; 

__attribute__((used)) static void
FUNC19 (cp_parser* parser, tree in_statement_expr,
		     bool in_compound, bool *if_p)
{
  tree statement;
  cp_token *token;
  location_t statement_location;

 restart:
  if (if_p != NULL)
    *if_p = false;
  /* There is no statement yet.  */
  statement = NULL_TREE;
  /* Peek at the next token.  */
  token = FUNC5 (parser->lexer);
  /* Remember the location of the first token in the statement.  */
  statement_location = token->location;
  /* If this is a keyword, then that will often determine what kind of
     statement we have.  */
  if (token->type == CPP_KEYWORD)
    {
      enum rid keyword = token->keyword;

      switch (keyword)
	{
	case RID_CASE:
	case RID_DEFAULT:
	  /* Looks like a labeled-statement with a case label.
	     Parse the label, and then use tail recursion to parse
	     the statement.  */
	  FUNC12 (parser);
	  goto restart;

	case RID_IF:
	case RID_SWITCH:
	  statement = FUNC17 (parser, if_p);
	  break;

	case RID_WHILE:
	case RID_DO:
	case RID_FOR:
	  statement = FUNC10 (parser);
	  break;

	case RID_BREAK:
	case RID_CONTINUE:
	case RID_RETURN:
	case RID_GOTO:
	  statement = FUNC11 (parser);
	  break;

	  /* Objective-C++ exception-handling constructs.  */
	case RID_AT_TRY:
	case RID_AT_CATCH:
	case RID_AT_FINALLY:
	case RID_AT_SYNCHRONIZED:
	case RID_AT_THROW:
	  statement = FUNC13 (parser);
	  break;

	case RID_TRY:
	  statement = FUNC18 (parser);
	  break;

	default:
	  /* It might be a keyword like `int' that can start a
	     declaration-statement.  */
	  break;
	}
    }
  else if (token->type == CPP_NAME)
    {
      /* If the next token is a `:', then we are looking at a
	 labeled-statement.  */
      token = FUNC4 (parser->lexer, 2);
      if (token->type == CPP_COLON)
	{
	  /* Looks like a labeled-statement with an ordinary label.
	     Parse the label, and then use tail recursion to parse
	     the statement.  */
	  FUNC12 (parser);
	  goto restart;
	}
    }
  /* Anything that starts with a `{' must be a compound-statement.  */
  else if (token->type == CPP_OPEN_BRACE)
    /* APPLE LOCAL radar 5982990 */
    statement = FUNC6 (parser, NULL, false, false);
  /* CPP_PRAGMA is a #pragma inside a function body, which constitutes
     a statement all its own.  */
  else if (token->type == CPP_PRAGMA)
    {
      /* Only certain OpenMP pragmas are attached to statements, and thus
	 are considered statements themselves.  All others are not.  In
	 the context of a compound, accept the pragma as a "statement" and
	 return so that we can check for a close brace.  Otherwise we
	 require a real statement and must go back and read one.  */
      if (in_compound)
	FUNC16 (parser, pragma_compound);
      else if (!FUNC16 (parser, pragma_stmt))
	goto restart;
      return;
    }
  else if (token->type == CPP_EOF)
    {
      FUNC8 (parser, "expected statement");
      return;
    }

  /* Everything else must be a declaration-statement or an
     expression-statement.  Try for the declaration-statement
     first, unless we are looking at a `;', in which case we know that
     we have an expression-statement.  */
  if (!statement)
    {
      if (FUNC3 (parser->lexer, CPP_SEMICOLON))
	{
	  FUNC15 (parser);
	  /* Try to parse the declaration-statement.  */
	  FUNC7 (parser);
	  /* If that worked, we're done.  */
	  if (FUNC14 (parser))
	    return;
	}
      /* Look for an expression-statement instead.  */
      statement = FUNC9 (parser, in_statement_expr);
    }

  /* Set the line number for the statement.  */
  if (statement && FUNC1 (FUNC2 (statement)))
    FUNC0 (statement, statement_location);
}