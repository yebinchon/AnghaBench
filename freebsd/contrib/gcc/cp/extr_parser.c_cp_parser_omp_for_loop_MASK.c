#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_18__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
typedef  int /*<<< orphan*/  location_t ;
struct TYPE_20__ {int /*<<< orphan*/  in_statement; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;
typedef  int /*<<< orphan*/  cp_declarator ;
typedef  int /*<<< orphan*/  cp_decl_specifier_seq ;
struct TYPE_19__ {int /*<<< orphan*/  location; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_EQ ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 int /*<<< orphan*/  CP_PARSER_DECLARATOR_NAMED ; 
 int /*<<< orphan*/  IN_OMP_FOR ; 
 int /*<<< orphan*/  LOOKUP_ONLYCONVERTING ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  RID_FOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_18__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*,int) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 () ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static tree
FUNC24 (cp_parser *parser)
{
  tree init, cond, incr, body, decl, pre_body;
  location_t loc;

  if (!FUNC2 (parser->lexer, RID_FOR))
    {
      FUNC10 (parser, "for statement expected");
      return NULL;
    }
  loc = FUNC1 (parser->lexer)->location;
  if (!FUNC15 (parser, CPP_OPEN_PAREN, "`('"))
    return NULL;

  init = decl = NULL;
  pre_body = FUNC22 ();
  if (FUNC3 (parser->lexer, CPP_SEMICOLON))
    {
      cp_decl_specifier_seq type_specifiers;

      /* First, try to parse as an initialized declaration.  See
	 cp_parser_condition, from whence the bulk of this is copied.  */

      FUNC14 (parser);
      FUNC18 (parser, /*is_condition=*/false,
				    &type_specifiers);
      if (!FUNC11 (parser))
	{
	  tree asm_specification, attributes;
	  cp_declarator *declarator;

	  declarator = FUNC9 (parser,
					     CP_PARSER_DECLARATOR_NAMED,
					     /*ctor_dtor_or_conv_p=*/NULL,
					     /*parenthesized_p=*/NULL,
					     /*member_p=*/false);
	  attributes = FUNC7 (parser);
	  asm_specification = FUNC5 (parser);

	  FUNC15 (parser, CPP_EQ, "`='");
	  if (FUNC13 (parser))
	    {
	      tree pushed_scope;

	      decl = FUNC23 (declarator, &type_specifiers,
				 /*initialized_p=*/false, attributes,
				 /*prefix_attributes=*/NULL_TREE,
				 &pushed_scope);

	      init = FUNC6 (parser, false);

	      FUNC0 (decl, NULL_TREE, /*init_const_expr_p=*/false,
			      asm_specification, LOOKUP_ONLYCONVERTING);

	      if (pushed_scope)
		FUNC20 (pushed_scope);
	    }
	}
      else
	FUNC4 (parser);

      /* If parsing as an initialized declaration failed, try again as
	 a simple expression.  */
      if (decl == NULL)
	init = FUNC12 (parser, false);
    }
  FUNC15 (parser, CPP_SEMICOLON, "`;'");
  pre_body = FUNC21 (pre_body);

  cond = NULL;
  if (FUNC3 (parser->lexer, CPP_SEMICOLON))
    cond = FUNC8 (parser);
  FUNC15 (parser, CPP_SEMICOLON, "`;'");

  incr = NULL;
  if (FUNC3 (parser->lexer, CPP_CLOSE_PAREN))
    incr = FUNC12 (parser, false);

  if (!FUNC15 (parser, CPP_CLOSE_PAREN, "`)'"))
    FUNC16 (parser, /*recovering=*/true,
					   /*or_comma=*/false,
					   /*consume_paren=*/true);

  /* Note that we saved the original contents of this flag when we entered
     the structured block, and so we don't need to re-save it here.  */
  parser->in_statement = IN_OMP_FOR;

  /* Note that the grammar doesn't call for a structured block here,
     though the loop as a whole is a structured block.  */
  body = FUNC22 ();
  FUNC17 (parser, NULL_TREE, false, NULL);
  body = FUNC21 (body);

  return FUNC19 (loc, decl, init, cond, incr, body, pre_body);
}