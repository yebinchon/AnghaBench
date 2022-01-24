#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_12__ {int keyword; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_13__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_COMMA ; 
 int /*<<< orphan*/  CPP_EQ ; 
 int /*<<< orphan*/  CPP_GREATER ; 
 int /*<<< orphan*/  CPP_KEYWORD ; 
 int /*<<< orphan*/  CPP_LESS ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  NULL_TREE ; 
#define  RID_CLASS 130 
#define  RID_TEMPLATE 129 
#define  RID_TYPENAME 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_DECL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  class_type_node ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int const,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  dk_no_deferred ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  none_type ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC18 (cp_parser* parser)
{
  cp_token *token;
  tree parameter;

  /* Look for a keyword to tell us what kind of parameter this is.  */
  token = FUNC9 (parser, CPP_KEYWORD,
			     "`class', `typename', or `template'");
  if (!token)
    return error_mark_node;

  switch (token->keyword)
    {
    case RID_CLASS:
    case RID_TYPENAME:
      {
	tree identifier;
	tree default_argument;

	/* If the next token is an identifier, then it names the
	   parameter.  */
	if (FUNC4 (parser->lexer, CPP_NAME))
	  identifier = FUNC7 (parser);
	else
	  identifier = NULL_TREE;

	/* Create the parameter.  */
	parameter = FUNC14 (class_type_node, identifier);

	/* If the next token is an `=', we have a default argument.  */
	if (FUNC4 (parser->lexer, CPP_EQ))
	  {
	    /* Consume the `=' token.  */
	    FUNC3 (parser->lexer);
	    /* Parse the default-argument.  */
	    FUNC17 (dk_no_deferred);
	    default_argument = FUNC12 (parser);
	    FUNC16 ();
	  }
	else
	  default_argument = NULL_TREE;

	/* Create the combined representation of the parameter and the
	   default argument.  */
	parameter = FUNC1 (default_argument, parameter);
      }
      break;

    case RID_TEMPLATE:
      {
	tree parameter_list;
	tree identifier;
	tree default_argument;

	/* Look for the `<'.  */
	FUNC9 (parser, CPP_LESS, "`<'");
	/* Parse the template-parameter-list.  */
	parameter_list = FUNC11 (parser);
	/* Look for the `>'.  */
	FUNC9 (parser, CPP_GREATER, "`>'");
	/* Look for the `class' keyword.  */
	FUNC10 (parser, RID_CLASS, "`class'");
	/* If the next token is an `=', then there is a
	   default-argument.  If the next token is a `>', we are at
	   the end of the parameter-list.  If the next token is a `,',
	   then we are at the end of this parameter.  */
	if (FUNC5 (parser->lexer, CPP_EQ)
	    && FUNC5 (parser->lexer, CPP_GREATER)
	    && FUNC5 (parser->lexer, CPP_COMMA))
	  {
	    identifier = FUNC7 (parser);
	    /* Treat invalid names as if the parameter were nameless.  */
	    if (identifier == error_mark_node)
	      identifier = NULL_TREE;
	  }
	else
	  identifier = NULL_TREE;

	/* Create the template parameter.  */
	parameter = FUNC13 (class_type_node,
						   identifier);

	/* If the next token is an `=', then there is a
	   default-argument.  */
	if (FUNC4 (parser->lexer, CPP_EQ))
	  {
	    bool is_template;

	    /* Consume the `='.  */
	    FUNC3 (parser->lexer);
	    /* Parse the id-expression.  */
	    FUNC17 (dk_no_deferred);
	    default_argument
	      = FUNC6 (parser,
					 /*template_keyword_p=*/false,
					 /*check_dependency_p=*/true,
					 /*template_p=*/&is_template,
					 /*declarator_p=*/false,
					 /*optional_p=*/false);
	    if (FUNC0 (default_argument) == TYPE_DECL)
	      /* If the id-expression was a template-id that refers to
		 a template-class, we already have the declaration here,
		 so no further lookup is needed.  */
		 ;
	    else
	      /* Look up the name.  */
	      default_argument
		= FUNC8 (parser, default_argument,
					 none_type,
					 /*is_template=*/is_template,
					 /*is_namespace=*/false,
					 /*check_dependency=*/true,
					 /*ambiguous_decls=*/NULL);
	    /* See if the default argument is valid.  */
	    default_argument
	      = FUNC2 (default_argument);
	    FUNC16 ();
	  }
	else
	  default_argument = NULL_TREE;

	/* Create the combined representation of the parameter and the
	   default argument.  */
	parameter = FUNC1 (default_argument, parameter);
      }
      break;

    default:
      FUNC15 ();
      break;
    }

  return parameter;
}