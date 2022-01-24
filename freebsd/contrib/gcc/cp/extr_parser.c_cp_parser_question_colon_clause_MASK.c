#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_7__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_COLON ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static tree
FUNC7 (cp_parser* parser, tree logical_or_expr)
{
  tree expr;
  tree assignment_expr;

  /* Consume the `?' token.  */
  FUNC1 (parser->lexer);
  if (FUNC3 (parser)
      && FUNC2 (parser->lexer, CPP_COLON))
    /* Implicit true clause.  */
    expr = NULL_TREE;
  else
    /* Parse the expression.  */
    expr = FUNC5 (parser, /*cast_p=*/false);

  /* The next token should be a `:'.  */
  FUNC6 (parser, CPP_COLON, "`:'");
  /* Parse the assignment-expression.  */
  assignment_expr = FUNC4 (parser, /*cast_p=*/false);

  /* Build the conditional-expression.  */
  return FUNC0 (logical_or_expr,
				   expr,
				   assignment_expr);
}