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
typedef  struct TYPE_18__   TYPE_16__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  enum rid { ____Placeholder_rid } rid ;
struct TYPE_19__ {scalar_t__ type; int keyword; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_20__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;
struct TYPE_18__ {int keyword; } ;

/* Variables and functions */
#define  ADDR_EXPR 142 
 int ALIGNOF_EXPR ; 
#define  BIT_NOT_EXPR 141 
 scalar_t__ CPP_AND_AND ; 
 scalar_t__ CPP_KEYWORD ; 
 scalar_t__ CPP_MINUS_MINUS ; 
 scalar_t__ CPP_PLUS_PLUS ; 
 int /*<<< orphan*/  CPP_SCOPE ; 
 int ERROR_MARK ; 
 int IMAGPART_EXPR ; 
#define  INDIRECT_REF 140 
#define  NEGATE_EXPR 139 
#define  PREDECREMENT_EXPR 138 
#define  PREINCREMENT_EXPR 137 
 int REALPART_EXPR ; 
#define  RID_ALIGNOF 136 
#define  RID_DELETE 135 
#define  RID_EXTENSION 134 
#define  RID_IMAGPART 133 
#define  RID_NEW 132 
#define  RID_REALPART 131 
#define  RID_SIZEOF 130 
 int SIZEOF_EXPR ; 
#define  TRUTH_NOT_EXPR 129 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  UNARY_PLUS_EXPR 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_16__* FUNC5 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 
 int FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int pedantic ; 

__attribute__((used)) static tree
FUNC23 (cp_parser *parser, bool address_p, bool cast_p)
{
  cp_token *token;
  enum tree_code unary_operator;

  /* Peek at the next token.  */
  token = FUNC6 (parser->lexer);
  /* Some keywords give away the kind of expression.  */
  if (token->type == CPP_KEYWORD)
    {
      enum rid keyword = token->keyword;

      switch (keyword)
	{
	case RID_ALIGNOF:
	case RID_SIZEOF:
	  {
	    tree operand;
	    enum tree_code op;

	    op = keyword == RID_ALIGNOF ? ALIGNOF_EXPR : SIZEOF_EXPR;
	    /* Consume the token.  */
	    FUNC3 (parser->lexer);
	    /* Parse the operand.  */
	    operand = FUNC16 (parser, keyword);

	    if (FUNC0 (operand))
	      return FUNC19 (operand, op, true);
	    else
	      return FUNC18 (operand, op);
	  }

	case RID_NEW:
	  return FUNC12 (parser);

	case RID_DELETE:
	  return FUNC9 (parser);

	case RID_EXTENSION:
	  {
	    /* The saved value of the PEDANTIC flag.  */
	    int saved_pedantic;
	    tree expr;

	    /* Save away the PEDANTIC flag.  */
	    FUNC10 (parser, &saved_pedantic);
	    /* Parse the cast-expression.  */
	    expr = FUNC15 (parser);
	    /* Restore the PEDANTIC flag.  */
	    pedantic = saved_pedantic;

	    return expr;
	  }

	case RID_REALPART:
	case RID_IMAGPART:
	  {
	    tree expression;

	    /* Consume the `__real__' or `__imag__' token.  */
	    FUNC3 (parser->lexer);
	    /* Parse the cast-expression.  */
	    expression = FUNC15 (parser);
	    /* Create the complete representation.  */
	    return FUNC2 ((keyword == RID_REALPART
				      ? REALPART_EXPR : IMAGPART_EXPR),
				     expression);
	  }
	  break;

	default:
	  break;
	}
    }

  /* Look for the `:: new' and `:: delete', which also signal the
     beginning of a new-expression, or delete-expression,
     respectively.  If the next token is `::', then it might be one of
     these.  */
  if (FUNC4 (parser->lexer, CPP_SCOPE))
    {
      enum rid keyword;

      /* See if the token after the `::' is one of the keywords in
	 which we're interested.  */
      keyword = FUNC5 (parser->lexer, 2)->keyword;
      /* If it's `new', we have a new-expression.  */
      if (keyword == RID_NEW)
	return FUNC12 (parser);
      /* Similarly, for `delete'.  */
      else if (keyword == RID_DELETE)
	return FUNC9 (parser);
    }

  /* Look for a unary operator.  */
  unary_operator = FUNC17 (token);
  /* The `++' and `--' operators can be handled similarly, even though
     they are not technically unary-operators in the grammar.  */
  if (unary_operator == ERROR_MARK)
    {
      if (token->type == CPP_PLUS_PLUS)
	unary_operator = PREINCREMENT_EXPR;
      else if (token->type == CPP_MINUS_MINUS)
	unary_operator = PREDECREMENT_EXPR;
      /* Handle the GNU address-of-label extension.  */
      else if (FUNC7 (parser)
	       && token->type == CPP_AND_AND)
	{
	  tree identifier;

	  /* Consume the '&&' token.  */
	  FUNC3 (parser->lexer);
	  /* Look for the identifier.  */
	  identifier = FUNC11 (parser);
	  /* Create an expression representing the address.  */
	  return FUNC20 (identifier);
	}
    }
  if (unary_operator != ERROR_MARK)
    {
      tree cast_expression;
      tree expression = error_mark_node;
      const char *non_constant_p = NULL;

      /* Consume the operator token.  */
      token = FUNC3 (parser->lexer);
      /* Parse the cast-expression.  */
      cast_expression
	= FUNC8 (parser,
				     unary_operator == ADDR_EXPR,
				     /*cast_p=*/false);
      /* Now, build an appropriate representation.  */
      switch (unary_operator)
	{
	case INDIRECT_REF:
	  non_constant_p = "`*'";
	  expression = FUNC1 (cast_expression, "unary *");
	  break;

	case ADDR_EXPR:
	  non_constant_p = "`&'";
	  /* Fall through.  */
	case BIT_NOT_EXPR:
	  expression = FUNC2 (unary_operator, cast_expression);
	  break;

	case PREINCREMENT_EXPR:
	case PREDECREMENT_EXPR:
	  non_constant_p = (unary_operator == PREINCREMENT_EXPR
			    ? "`++'" : "`--'");
	  /* Fall through.  */
	case UNARY_PLUS_EXPR:
	case NEGATE_EXPR:
	case TRUTH_NOT_EXPR:
	  expression = FUNC21 (unary_operator, cast_expression);
	  break;

	default:
	  FUNC22 ();
	}

      if (non_constant_p
	  && FUNC13 (parser,
							 non_constant_p))
	expression = error_mark_node;

      return expression;
    }

  return FUNC14 (parser, address_p, cast_p);
}