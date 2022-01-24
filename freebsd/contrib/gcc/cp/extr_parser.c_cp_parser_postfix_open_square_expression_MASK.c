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
 int /*<<< orphan*/  CPP_CLOSE_SQUARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC6 (cp_parser *parser,
					  tree postfix_expression,
					  bool for_offsetof)
{
  tree index;

  /* Consume the `[' token.  */
  FUNC0 (parser->lexer);

  /* Parse the index expression.  */
  /* ??? For offsetof, there is a question of what to allow here.  If
     offsetof is not being used in an integral constant expression context,
     then we *could* get the right answer by computing the value at runtime.
     If we are in an integral constant expression context, then we might
     could accept any constant expression; hard to say without analysis.
     Rather than open the barn door too wide right away, allow only integer
     constant expressions here.  */
  if (for_offsetof)
    index = FUNC1 (parser, false, NULL);
  else
    index = FUNC2 (parser, /*cast_p=*/false);

  /* Look for the closing `]'.  */
  FUNC4 (parser, CPP_CLOSE_SQUARE, "`]'");

  /* Build the ARRAY_REF.  */
  postfix_expression = FUNC5 (postfix_expression, index);

  /* When not doing offsetof, array references are not permitted in
     constant-expressions.  */
  if (!for_offsetof
      && (FUNC3
	  (parser, "an array reference")))
    postfix_expression = error_mark_node;

  return postfix_expression;
}