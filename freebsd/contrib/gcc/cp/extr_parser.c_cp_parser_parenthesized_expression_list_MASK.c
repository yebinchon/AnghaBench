#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_11__ {scalar_t__ value; } ;
struct TYPE_12__ {TYPE_1__ u; } ;
typedef  TYPE_2__ cp_token ;
struct TYPE_13__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_3__ cp_parser ;
struct TYPE_14__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_COMMA ; 
 scalar_t__ CPP_NAME ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 scalar_t__ NULL_TREE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (TYPE_3__*,int,int,int) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC10 (cp_parser* parser,
					 bool is_attribute_list,
					 bool cast_p,
					 bool *non_constant_p)
{
  tree expression_list = NULL_TREE;
  bool fold_expr_p = is_attribute_list;
  tree identifier = NULL_TREE;

  /* Assume all the expressions will be constant.  */
  if (non_constant_p)
    *non_constant_p = false;

  if (!FUNC5 (parser, CPP_OPEN_PAREN, "`('"))
    return error_mark_node;

  /* Consume expressions until there are no more.  */
  if (FUNC1 (parser->lexer, CPP_CLOSE_PAREN))
    while (true)
      {
	tree expr;

	/* At the beginning of attribute lists, check to see if the
	   next token is an identifier.  */
	if (is_attribute_list
	    && FUNC2 (parser->lexer)->type == CPP_NAME)
	  {
	    cp_token *token;

	    /* Consume the identifier.  */
	    token = FUNC0 (parser->lexer);
	    /* Save the identifier.  */
	    identifier = token->u.value;
	  }
	else
	  {
	    /* Parse the next assignment-expression.  */
	    if (non_constant_p)
	      {
		bool expr_non_constant_p;
		expr = (FUNC4
			(parser, /*allow_non_constant_p=*/true,
			 &expr_non_constant_p));
		if (expr_non_constant_p)
		  *non_constant_p = true;
	      }
	    else
	      expr = FUNC3 (parser, cast_p);

	    if (fold_expr_p)
	      expr = FUNC7 (expr);

	     /* Add it to the list.  We add error_mark_node
		expressions to the list, so that we can still tell if
		the correct form for a parenthesized expression-list
		is found. That gives better errors.  */
	    expression_list = FUNC9 (NULL_TREE, expr, expression_list);

	    if (expr == error_mark_node)
	      goto skip_comma;
	  }

	/* After the first item, attribute lists look the same as
	   expression lists.  */
	is_attribute_list = false;

      get_comma:;
	/* If the next token isn't a `,', then we are done.  */
	if (FUNC1 (parser->lexer, CPP_COMMA))
	  break;

	/* Otherwise, consume the `,' and keep going.  */
	FUNC0 (parser->lexer);
      }

  if (!FUNC5 (parser, CPP_CLOSE_PAREN, "`)'"))
    {
      int ending;

    skip_comma:;
      /* We try and resync to an unnested comma, as that will give the
	 user better diagnostics.  */
      ending = FUNC6 (parser,
						      /*recovering=*/true,
						      /*or_comma=*/true,
						      /*consume_paren=*/true);
      if (ending < 0)
	goto get_comma;
      if (!ending)
	return error_mark_node;
    }

  /* We built up the list in reverse order so we must reverse it now.  */
  expression_list = FUNC8 (expression_list);
  if (identifier)
    expression_list = FUNC9 (NULL_TREE, identifier, expression_list);

  return expression_list;
}