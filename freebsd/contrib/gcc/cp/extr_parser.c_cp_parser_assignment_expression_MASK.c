#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_8__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_QUERY ; 
 int ERROR_MARK ; 
 int /*<<< orphan*/  RID_THROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  error_mark_node ; 

__attribute__((used)) static tree
FUNC8 (cp_parser* parser, bool cast_p)
{
  tree expr;

  /* If the next token is the `throw' keyword, then we're looking at
     a throw-expression.  */
  if (FUNC2 (parser->lexer, RID_THROW))
    expr = FUNC7 (parser);
  /* Otherwise, it must be that we are looking at a
     logical-or-expression.  */
  else
    {
      /* Parse the binary expressions (logical-or-expression).  */
      expr = FUNC4 (parser, cast_p);
      /* If the next token is a `?' then we're actually looking at a
	 conditional-expression.  */
      if (FUNC1 (parser->lexer, CPP_QUERY))
	return FUNC6 (parser, expr);
      else
	{
	  enum tree_code assignment_operator;

	  /* If it's an assignment-operator, we're using the second
	     production.  */
	  assignment_operator
	    = FUNC3 (parser);
	  if (assignment_operator != ERROR_MARK)
	    {
	      tree rhs;

	      /* Parse the right-hand side of the assignment.  */
	      rhs = FUNC8 (parser, cast_p);
	      /* An assignment may not appear in a
		 constant-expression.  */
	      if (FUNC5 (parser,
							      "an assignment"))
		return error_mark_node;
	      /* Build the assignment expression.  */
	      expr = FUNC0 (expr,
					  assignment_operator,
					  rhs);
	    }
	}
    }

  return expr;
}