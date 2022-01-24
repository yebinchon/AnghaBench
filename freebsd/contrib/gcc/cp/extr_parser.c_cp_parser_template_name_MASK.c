#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  scalar_t__ cp_token_position ;
struct TYPE_13__ {scalar_t__ scope; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  RID_OPERATOR ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (TYPE_1__*,int) ; 
 scalar_t__ FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 scalar_t__ FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int,int,int) ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (char*,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  none_type ; 
 scalar_t__ processing_template_decl ; 

__attribute__((used)) static tree
FUNC29 (cp_parser* parser,
			 bool template_keyword_p,
			 bool check_dependency_p,
			 bool is_declaration,
			 bool *is_identifier)
{
  tree identifier;
  tree decl;
  tree fns;

  /* If the next token is `operator', then we have either an
     operator-function-id or a conversion-function-id.  */
  if (FUNC11 (parser->lexer, RID_OPERATOR))
    {
      /* We don't know whether we're looking at an
	 operator-function-id or a conversion-function-id.  */
      FUNC21 (parser);
      /* Try an operator-function-id.  */
      identifier = FUNC19 (parser);
      /* If that didn't work, try a conversion-function-id.  */
      if (!FUNC20 (parser))
	{
	  FUNC15 (parser, "expected template-name");
	  return error_mark_node;
	}
    }
  /* Look for the identifier.  */
  else
    identifier = FUNC16 (parser);

  /* If we didn't find an identifier, we don't have a template-id.  */
  if (identifier == error_mark_node)
    return error_mark_node;

  /* If the name immediately followed the `template' keyword, then it
     is a template-name.  However, if the next token is not `<', then
     we do not treat it as a template-name, since it is not being used
     as part of a template-id.  This enables us to handle constructs
     like:

       template <typename T> struct S { S(); };
       template <typename T> S<T>::S();

     correctly.  We would treat `S' as a template -- if it were `S<T>'
     -- but we do not if there is no `<'.  */

  if (processing_template_decl
      && FUNC18 (parser, 1))
    {
      /* In a declaration, in a dependent context, we pretend that the
	 "template" keyword was present in order to improve error
	 recovery.  For example, given:

	   template <typename T> void f(T::X<int>);

	 we want to treat "X<int>" as a template-id.  */
      if (is_declaration
	  && !template_keyword_p
	  && parser->scope && FUNC8 (parser->scope)
	  && check_dependency_p
	  && FUNC24 (parser->scope)
	  /* Do not do this for dtors (or ctors), since they never
	     need the template keyword before their name.  */
	  && !FUNC9 (identifier, parser->scope))
	{
	  cp_token_position start = 0;

	  /* Explain what went wrong.  */
	  FUNC25 ("non-template %qD used as template", identifier);
	  FUNC27 ("use %<%T::template %D%> to indicate that it is a template",
		  parser->scope, identifier);
	  /* If parsing tentatively, find the location of the "<" token.  */
	  if (FUNC22 (parser))
	    start = FUNC13 (parser->lexer, true);
	  /* Parse the template arguments so that we can issue error
	     messages about them.  */
	  FUNC10 (parser->lexer);
	  FUNC14 (parser);
	  /* Skip tokens until we find a good place from which to
	     continue parsing.  */
	  FUNC23 (parser,
						 /*recovering=*/true,
						 /*or_comma=*/true,
						 /*consume_paren=*/false);
	  /* If parsing tentatively, permanently remove the
	     template argument list.  That will prevent duplicate
	     error messages from being issued about the missing
	     "template" keyword.  */
	  if (start)
	    FUNC12 (parser->lexer, start);
	  if (is_identifier)
	    *is_identifier = true;
	  return identifier;
	}

      /* If the "template" keyword is present, then there is generally
	 no point in doing name-lookup, so we just return IDENTIFIER.
	 But, if the qualifying scope is non-dependent then we can
	 (and must) do name-lookup normally.  */
      if (template_keyword_p
	  && (!parser->scope
	      || (FUNC8 (parser->scope)
		  && FUNC24 (parser->scope))))
	return identifier;
    }

  /* Look up the name.  */
  decl = FUNC17 (parser, identifier,
				none_type,
				/*is_template=*/false,
				/*is_namespace=*/false,
				check_dependency_p,
				/*ambiguous_decls=*/NULL);
  decl = FUNC28 (decl);

  /* If DECL is a template, then the name was a template-name.  */
  if (FUNC7 (decl) == TEMPLATE_DECL)
    ;
  else
    {
      tree fn = NULL_TREE;

      /* The standard does not explicitly indicate whether a name that
	 names a set of overloaded declarations, some of which are
	 templates, is a template-name.  However, such a name should
	 be a template-name; otherwise, there is no way to form a
	 template-id for the overloaded templates.  */
      fns = FUNC1 (decl) ? FUNC0 (decl) : decl;
      if (FUNC7 (fns) == OVERLOAD)
	for (fn = fns; fn; fn = FUNC6 (fn))
	  if (FUNC7 (FUNC5 (fn)) == TEMPLATE_DECL)
	    break;

      if (!fn)
	{
	  /* The name does not name a template.  */
	  FUNC15 (parser, "expected template-name");
	  return error_mark_node;
	}
    }

  /* If DECL is dependent, and refers to a function, then just return
     its name; we will look it up again during template instantiation.  */
  if (FUNC3 (decl) || !FUNC4 (decl))
    {
      tree scope = FUNC2 (FUNC26 (decl));
      if (FUNC8 (scope) && FUNC24 (scope))
	return identifier;
    }

  return decl;
}