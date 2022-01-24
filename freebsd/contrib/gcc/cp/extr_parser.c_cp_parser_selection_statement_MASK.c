#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum rid { ____Placeholder_rid } rid ;
struct TYPE_11__ {int keyword; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_12__ {int in_switch_statement_p; unsigned char in_statement; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_KEYWORD ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char IN_SWITCH_STMT ; 
 int /*<<< orphan*/  OPT_Wparentheses ; 
 int /*<<< orphan*/  RID_ELSE ; 
#define  RID_IF 129 
#define  RID_SWITCH 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int*) ; 
 TYPE_1__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC19 (cp_parser* parser, bool *if_p)
{
  cp_token *token;
  enum rid keyword;

  if (if_p != NULL)
    *if_p = false;

  /* Peek at the next token.  */
  token = FUNC9 (parser, CPP_KEYWORD, "selection-statement");

  /* See what kind of keyword it is.  */
  keyword = token->keyword;
  switch (keyword)
    {
    case RID_IF:
    case RID_SWITCH:
      {
	tree statement;
	tree condition;

	/* Look for the `('.  */
	if (!FUNC9 (parser, CPP_OPEN_PAREN, "`('"))
	  {
	    FUNC11 (parser);
	    return error_mark_node;
	  }

	/* Begin the selection-statement.  */
	if (keyword == RID_IF)
	  statement = FUNC2 ();
	else
	  statement = FUNC3 ();

	/* Parse the condition.  */
	condition = FUNC6 (parser);
	/* Look for the `)'.  */
	if (!FUNC9 (parser, CPP_CLOSE_PAREN, "`)'"))
	  FUNC10 (parser, true, false,
						 /*consume_paren=*/true);

	if (keyword == RID_IF)
	  {
	    bool nested_if;

	    /* Add the condition.  */
	    FUNC14 (condition, statement);

	    /* Parse the then-clause.  */
	    FUNC8 (parser, &nested_if);
	    FUNC17 (statement);

	    /* If the next token is `else', parse the else-clause.  */
	    if (FUNC5 (parser->lexer,
						RID_ELSE))
	      {
		/* Consume the `else' keyword.  */
		FUNC4 (parser->lexer);
		FUNC1 (statement);
		/* Parse the else-clause.  */
		FUNC8 (parser, NULL);
		FUNC12 (statement);

		/* If we are currently parsing a then-clause, then
		   IF_P will not be NULL.  We set it to true to
		   indicate that this if statement has an else clause.
		   This may trigger the Wparentheses warning below
		   when we get back up to the parent if statement.  */
		if (if_p != NULL)
		  *if_p = true;
	      }
	    else
	      {
		/* This if statement does not have an else clause.  If
		   NESTED_IF is true, then the then-clause is an if
		   statement which does have an else clause.  We warn
		   about the potential ambiguity.  */
		if (nested_if)
		  FUNC18 (OPT_Wparentheses,
			   ("%Hsuggest explicit braces "
			    "to avoid ambiguous %<else%>"),
			   FUNC0 (statement));
	      }

	    /* Now we're all done with the if-statement.  */
	    FUNC13 (statement);
	  }
	else
	  {
	    bool in_switch_statement_p;
	    unsigned char in_statement;

	    /* Add the condition.  */
	    FUNC15 (condition, statement);

	    /* Parse the body of the switch-statement.  */
	    in_switch_statement_p = parser->in_switch_statement_p;
	    in_statement = parser->in_statement;
	    parser->in_switch_statement_p = true;
	    parser->in_statement |= IN_SWITCH_STMT;
	    FUNC8 (parser, NULL);
	    parser->in_switch_statement_p = in_switch_statement_p;
	    parser->in_statement = in_statement;

	    /* Now we're all done with the switch-statement.  */
	    FUNC16 (statement);
	  }

	return statement;
      }
      break;

    default:
      FUNC7 (parser, "expected selection-statement");
      return error_mark_node;
    }
}