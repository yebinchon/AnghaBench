#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_9__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_10__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;
struct TYPE_11__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ CPP_COMPL ; 
 scalar_t__ CPP_SCOPE ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  RID_TEMPLATE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_9__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int,int) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 scalar_t__ error_mark_node ; 

__attribute__((used)) static void
FUNC11 (cp_parser* parser,
				  tree* scope,
				  tree* type)
{
  bool nested_name_specifier_p;

  /* Assume that things will not work out.  */
  *type = error_mark_node;

  /* Look for the optional `::' operator.  */
  FUNC6 (parser, /*current_scope_valid_p=*/true);
  /* Look for the optional nested-name-specifier.  */
  nested_name_specifier_p
    = (FUNC7 (parser,
					    /*typename_keyword_p=*/false,
					    /*check_dependency_p=*/true,
					    /*type_p=*/false,
					    /*is_declaration=*/true)
       != NULL_TREE);
  /* Now, if we saw a nested-name-specifier, we might be doing the
     second production.  */
  if (nested_name_specifier_p
      && FUNC2 (parser->lexer, RID_TEMPLATE))
    {
      /* Consume the `template' keyword.  */
      FUNC1 (parser->lexer);
      /* Parse the template-id.  */
      FUNC9 (parser,
			     /*template_keyword_p=*/true,
			     /*check_dependency_p=*/false,
			     /*is_declaration=*/true);
      /* Look for the `::' token.  */
      FUNC8 (parser, CPP_SCOPE, "`::'");
    }
  /* If the next token is not a `~', then there might be some
     additional qualification.  */
  else if (FUNC3 (parser->lexer, CPP_COMPL))
    {
      /* Look for the type-name.  */
      *scope = FUNC0 (FUNC10 (parser));

      if (*scope == error_mark_node)
	return;

      /* If we don't have ::~, then something has gone wrong.  Since
	 the only caller of this function is looking for something
	 after `.' or `->' after a scalar type, most likely the
	 program is trying to get a member of a non-aggregate
	 type.  */
      if (FUNC3 (parser->lexer, CPP_SCOPE)
	  || FUNC4 (parser->lexer, 2)->type != CPP_COMPL)
	{
	  FUNC5 (parser, "request for member of non-aggregate type");
	  return;
	}

      /* Look for the `::' token.  */
      FUNC8 (parser, CPP_SCOPE, "`::'");
    }
  else
    *scope = NULL_TREE;

  /* Look for the `~'.  */
  FUNC8 (parser, CPP_COMPL, "`~'");
  /* Look for the type-name again.  We are not responsible for
     checking that it matches the first type-name.  */
  *type = FUNC10 (parser);
}