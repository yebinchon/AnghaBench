#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_12__ {char* type_definition_forbidden_message; int in_type_id_in_expr_p; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  OPT_Wold_style_cast ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int,int) ; 
 scalar_t__ current_lang_name ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  in_system_header ; 
 scalar_t__ lang_name_c ; 
 scalar_t__ warn_old_style_cast ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static tree
FUNC17 (cp_parser *parser, bool address_p, bool cast_p)
{
  /* If it's a `(', then we might be looking at a cast.  */
  if (FUNC4 (parser->lexer, CPP_OPEN_PAREN))
    {
      tree type = NULL_TREE;
      tree expr = NULL_TREE;
      bool compound_literal_p;
      const char *saved_message;

      /* There's no way to know yet whether or not this is a cast.
	 For example, `(int (3))' is a unary-expression, while `(int)
	 3' is a cast.  So, we resort to parsing tentatively.  */
      FUNC10 (parser);
      /* Types may not be defined in a cast.  */
      saved_message = parser->type_definition_forbidden_message;
      parser->type_definition_forbidden_message
	= "types may not be defined in casts";
      /* Consume the `('.  */
      FUNC3 (parser->lexer);
      /* A very tricky bit is that `(struct S) { 3 }' is a
	 compound-literal (which we permit in C++ as an extension).
	 But, that construct is not a cast-expression -- it is a
	 postfix-expression.  (The reason is that `(struct S) { 3 }.i'
	 is legal; if the compound-literal were a cast-expression,
	 you'd need an extra set of parentheses.)  But, if we parse
	 the type-id, and it happens to be a class-specifier, then we
	 will commit to the parse at that point, because we cannot
	 undo the action that is done when creating a new class.  So,
	 then we cannot back up and do a postfix-expression.

	 Therefore, we scan ahead to the closing `)', and check to see
	 if the token after the `)' is a `{'.  If so, we are not
	 looking at a cast-expression.

	 Save tokens so that we can put them back.  */
      FUNC6 (parser->lexer);
      /* Skip tokens until the next token is a closing parenthesis.
	 If we find the closing `)', and the next token is a `{', then
	 we are looking at a compound-literal.  */
      compound_literal_p
	= (FUNC13 (parser, false, false,
						  /*consume_paren=*/true)
	   && FUNC4 (parser->lexer, CPP_OPEN_BRACE));
      /* Roll back the tokens we skipped.  */
      FUNC5 (parser->lexer);
      /* If we were looking at a compound-literal, simulate an error
	 so that the call to cp_parser_parse_definitely below will
	 fail.  */
      if (compound_literal_p)
	FUNC12 (parser);
      else
	{
	  bool saved_in_type_id_in_expr_p = parser->in_type_id_in_expr_p;
	  parser->in_type_id_in_expr_p = true;
	  /* Look for the type-id.  */
	  type = FUNC14 (parser);
	  /* Look for the closing `)'.  */
	  FUNC11 (parser, CPP_CLOSE_PAREN, "`)'");
	  parser->in_type_id_in_expr_p = saved_in_type_id_in_expr_p;
	}

      /* Restore the saved message.  */
      parser->type_definition_forbidden_message = saved_message;

      /* If ok so far, parse the dependent expression. We cannot be
	 sure it is a cast. Consider `(T ())'.  It is a parenthesized
	 ctor of T, but looks like a cast to function returning T
	 without a dependent expression.  */
      if (!FUNC7 (parser))
	expr = FUNC17 (parser,
					  /*address_p=*/false,
					  /*cast_p=*/true);

      if (FUNC9 (parser))
	{
	  /* Warn about old-style casts, if so requested.  */
	  if (warn_old_style_cast
	      && !in_system_header
	      && !FUNC0 (type)
	      && current_lang_name != lang_name_c)
	    FUNC16 (OPT_Wold_style_cast, "use of old-style cast");

	  /* Only type conversions to integral or enumeration types
	     can be used in constant-expressions.  */
	  if (!FUNC2 (type)
	      && (FUNC8
		  (parser,
		   "a cast to a type other than an integral or "
		   "enumeration type")))
	    return error_mark_node;

	  /* Perform the cast.  */
	  expr = FUNC1 (type, expr);
	  return expr;
	}
    }

  /* If we get here, then it's not a cast, so it must be a
     unary-expression.  */
  return FUNC15 (parser, address_p, cast_p);
}