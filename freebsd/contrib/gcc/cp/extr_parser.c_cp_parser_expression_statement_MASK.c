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
typedef  scalar_t__ tree ;
struct TYPE_5__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_BRACE ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC7 (cp_parser* parser, tree in_statement_expr)
{
  tree statement = NULL_TREE;

  /* If the next token is a ';', then there is no expression
     statement.  */
  if (FUNC1 (parser->lexer, CPP_SEMICOLON))
    statement = FUNC3 (parser, /*cast_p=*/false);

  /* Consume the final `;'.  */
  FUNC2 (parser);

  if (in_statement_expr
      && FUNC0 (parser->lexer, CPP_CLOSE_BRACE))
    /* This is the final expression statement of a statement
       expression.  */
    statement = FUNC6 (statement, in_statement_expr);
  else if (statement)
    statement = FUNC4 (statement);
  else
    FUNC5 ();

  return statement;
}