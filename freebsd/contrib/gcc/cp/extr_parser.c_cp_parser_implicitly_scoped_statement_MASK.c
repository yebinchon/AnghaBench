#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_5__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC8 (cp_parser* parser, bool *if_p)
{
  tree statement;

  if (if_p != NULL)
    *if_p = false;

  /* Mark if () ; with a special NOP_EXPR.  */
  if (FUNC4 (parser->lexer, CPP_SEMICOLON))
    {
      FUNC3 (parser->lexer);
      statement = FUNC0 (FUNC2 ());
    }
  /* if a compound is opened, we simply parse the statement directly.  */
  else if (FUNC4 (parser->lexer, CPP_OPEN_BRACE))
    /* APPLE LOCAL radar 5982990 */
    statement = FUNC5 (parser, NULL, false, false);
  /* If the token is not a `{', then we must take special action.  */
  else
    {
      /* Create a compound-statement.  */
      statement = FUNC1 (0);
      /* Parse the dependent-statement.  */
      FUNC6 (parser, NULL_TREE, false, if_p);
      /* Finish the dummy compound-statement.  */
      FUNC7 (statement);
    }

  /* Return the statement.  */
  return statement;
}