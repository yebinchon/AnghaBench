#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  void* tree ;
struct TYPE_16__ {int type; int /*<<< orphan*/  keyword; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_17__ {int /*<<< orphan*/  lexer; void* qualifying_scope; void* object_scope; void* scope; } ;
typedef  TYPE_2__ cp_parser ;

/* Variables and functions */
#define  CPP_KEYWORD 129 
#define  CPP_NAME 128 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  RID_OPERATOR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 
 void* FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 void* FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 void* FUNC10 (TYPE_2__*,int,int,int) ; 
 void* FUNC11 (TYPE_2__*,int,int,int,int) ; 
 void* error_mark_node ; 

__attribute__((used)) static tree
FUNC12 (cp_parser *parser,
			 bool template_keyword_p,
			 bool check_dependency_p,
			 bool *template_p,
			 bool declarator_p,
			 bool optional_p)
{
  bool global_scope_p;
  bool nested_name_specifier_p;

  /* Assume the `template' keyword was not used.  */
  if (template_p)
    *template_p = template_keyword_p;

  /* Look for the optional `::' operator.  */
  global_scope_p
    = (FUNC2 (parser, /*current_scope_valid_p=*/false)
       != NULL_TREE);
  /* Look for the optional nested-name-specifier.  */
  nested_name_specifier_p
    = (FUNC4 (parser,
					    /*typename_keyword_p=*/false,
					    check_dependency_p,
					    /*type_p=*/false,
					    declarator_p)
       != NULL_TREE);
  /* If there is a nested-name-specifier, then we are looking at
     the first qualified-id production.  */
  if (nested_name_specifier_p)
    {
      tree saved_scope;
      tree saved_object_scope;
      tree saved_qualifying_scope;
      tree unqualified_id;
      bool is_template;

      /* See if the next token is the `template' keyword.  */
      if (!template_p)
	template_p = &is_template;
      *template_p = FUNC7 (parser);
      /* Name lookup we do during the processing of the
	 unqualified-id might obliterate SCOPE.  */
      saved_scope = parser->scope;
      saved_object_scope = parser->object_scope;
      saved_qualifying_scope = parser->qualifying_scope;
      /* Process the final unqualified-id.  */
      unqualified_id = FUNC11 (parser, *template_p,
						 check_dependency_p,
						 declarator_p,
						 /*optional_p=*/false);
      /* Restore the SAVED_SCOPE for our caller.  */
      parser->scope = saved_scope;
      parser->object_scope = saved_object_scope;
      parser->qualifying_scope = saved_qualifying_scope;

      return unqualified_id;
    }
  /* Otherwise, if we are in global scope, then we are looking at one
     of the other qualified-id productions.  */
  else if (global_scope_p)
    {
      cp_token *token;
      tree id;

      /* Peek at the next token.  */
      token = FUNC0 (parser->lexer);

      /* If it's an identifier, and the next token is not a "<", then
	 we can avoid the template-id case.  This is an optimization
	 for this common case.  */
      if (token->type == CPP_NAME
	  && !FUNC5
	       (parser, 2))
	return FUNC3 (parser);

      FUNC9 (parser);
      /* Try a template-id.  */
      id = FUNC10 (parser,
				  /*template_keyword_p=*/false,
				  /*check_dependency_p=*/true,
				  declarator_p);
      /* If that worked, we're done.  */
      if (FUNC8 (parser))
	return id;

      /* Peek at the next token.  (Changes in the token buffer may
	 have invalidated the pointer obtained above.)  */
      token = FUNC0 (parser->lexer);

      switch (token->type)
	{
	case CPP_NAME:
	  return FUNC3 (parser);

	case CPP_KEYWORD:
	  if (token->keyword == RID_OPERATOR)
	    return FUNC6 (parser);
	  /* Fall through.  */

	default:
	  FUNC1 (parser, "expected id-expression");
	  return error_mark_node;
	}
    }
  else
    return FUNC11 (parser, template_keyword_p,
				     /*check_dependency_p=*/true,
				     declarator_p,
				     optional_p);
}