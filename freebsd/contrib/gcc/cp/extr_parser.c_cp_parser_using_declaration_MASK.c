#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_17__ {scalar_t__ keyword; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_18__ {int /*<<< orphan*/  scope; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;

/* Variables and functions */
 scalar_t__ BIT_NOT_EXPR ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ RID_TYPENAME ; 
 int /*<<< orphan*/  RID_USING ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int) ; 
 scalar_t__ FUNC8 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int,int,int,int) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int,int,int,int) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 scalar_t__ FUNC17 (TYPE_2__*,int,int,int,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 scalar_t__ global_namespace ; 

__attribute__((used)) static bool
FUNC23 (cp_parser* parser, 
			     bool access_declaration_p)
{
  cp_token *token;
  bool typename_p = false;
  bool global_scope_p;
  tree decl;
  tree identifier;
  tree qscope;

  if (access_declaration_p)
    FUNC13 (parser);
  else
    {
      /* Look for the `using' keyword.  */
      FUNC15 (parser, RID_USING, "`using'");
      
      /* Peek at the next token.  */
      token = FUNC5 (parser->lexer);
      /* See if it's `typename'.  */
      if (token->keyword == RID_TYPENAME)
	{
	  /* Remember that we've seen it.  */
	  typename_p = true;
	  /* Consume the `typename' token.  */
	  FUNC3 (parser->lexer);
	}
    }

  /* Look for the optional global scope qualification.  */
  global_scope_p
    = (FUNC7 (parser,
				   /*current_scope_valid_p=*/false)
       != NULL_TREE);

  /* If we saw `typename', or didn't see `::', then there must be a
     nested-name-specifier present.  */
  if (typename_p || !global_scope_p)
    qscope = FUNC10 (parser, typename_p,
					      /*check_dependency_p=*/true,
					      /*type_p=*/false,
					      /*is_declaration=*/true);
  /* Otherwise, we could be in either of the two productions.  In that
     case, treat the nested-name-specifier as optional.  */
  else
    qscope = FUNC11 (parser,
						  /*typename_keyword_p=*/false,
						  /*check_dependency_p=*/true,
						  /*type_p=*/false,
						  /*is_declaration=*/true);
  if (!qscope)
    qscope = global_namespace;

  if (access_declaration_p && FUNC6 (parser))
    /* Something has already gone wrong; there's no need to parse
       further.  Since an error has occurred, the return value of
       cp_parser_parse_definitely will be false, as required.  */
    return FUNC12 (parser);

  /* Parse the unqualified-id.  */
  identifier = FUNC17 (parser,
					 /*template_keyword_p=*/false,
					 /*check_dependency_p=*/true,
					 /*declarator_p=*/true,
					 /*optional_p=*/false);

  if (access_declaration_p)
    {
      if (FUNC4 (parser->lexer, CPP_SEMICOLON))
	FUNC16 (parser);
      if (!FUNC12 (parser))
	return false;
    }

  /* The function we call to handle a using-declaration is different
     depending on what scope we are in.  */
  if (qscope == error_mark_node || identifier == error_mark_node)
    ;
  else if (FUNC0 (identifier) != IDENTIFIER_NODE
	   && FUNC0 (identifier) != BIT_NOT_EXPR)
    /* [namespace.udecl]

       A using declaration shall not name a template-id.  */
    FUNC21 ("a template-id may not appear in a using-declaration");
  else
    {
      if (FUNC1 ())
	{
	  /* Create the USING_DECL.  */
	  decl = FUNC18 (parser->scope, identifier);
	  /* Add it to the list of members in this class.  */
	  FUNC22 (decl);
	}
      else
	{
	  decl = FUNC8 (parser, identifier);
	  if (decl == error_mark_node)
	    FUNC9 (parser, identifier, decl, NULL);
	  else if (!FUNC2 ())
	    FUNC19 (decl, qscope, identifier);
	  else
	    FUNC20 (decl, qscope, identifier);
	}
    }

  /* Look for the final `;'.  */
  FUNC14 (parser, CPP_SEMICOLON, "`;'");
  
  return true;
}