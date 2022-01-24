#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_14__ {char* type_definition_forbidden_message; } ;
typedef  TYPE_1__ cp_parser ;
typedef  int /*<<< orphan*/  cp_declarator ;
typedef  int /*<<< orphan*/  cp_decl_specifier_seq ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_EQ ; 
 int /*<<< orphan*/  CP_PARSER_DECLARATOR_NAMED ; 
 int /*<<< orphan*/  LOOKUP_ONLYCONVERTING ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static tree
FUNC16 (cp_parser* parser)
{
  cp_decl_specifier_seq type_specifiers;
  const char *saved_message;

  /* Try the declaration first.  */
  FUNC10 (parser);
  /* New types are not allowed in the type-specifier-seq for a
     condition.  */
  saved_message = parser->type_definition_forbidden_message;
  parser->type_definition_forbidden_message
    = "types may not be defined in conditions";
  /* Parse the type-specifier-seq.  */
  FUNC12 (parser, /*is_condition==*/true,
				&type_specifiers);
  /* Restore the saved message.  */
  parser->type_definition_forbidden_message = saved_message;
  /* If all is well, we might be looking at a declaration.  */
  if (!FUNC7 (parser))
    {
      tree decl;
      tree asm_specification;
      tree attributes;
      cp_declarator *declarator;
      tree initializer = NULL_TREE;

      /* Parse the declarator.  */
      declarator = FUNC6 (parser, CP_PARSER_DECLARATOR_NAMED,
					 /*ctor_dtor_or_conv_p=*/NULL,
					 /*parenthesized_p=*/NULL,
					 /*member_p=*/false);
      /* Parse the attributes.  */
      attributes = FUNC4 (parser);
      /* Parse the asm-specification.  */
      asm_specification = FUNC3 (parser);
      /* If the next token is not an `=', then we might still be
	 looking at an expression.  For example:

	   if (A(a).x)

	 looks like a decl-specifier-seq and a declarator -- but then
	 there is no `=', so this is an expression.  */
      FUNC11 (parser, CPP_EQ, "`='");
      /* If we did see an `=', then we are looking at a declaration
	 for sure.  */
      if (FUNC9 (parser))
	{
	  tree pushed_scope;
	  bool non_constant_p;

	  /* Create the declaration.  */
	  decl = FUNC15 (declarator, &type_specifiers,
			     /*initialized_p=*/true,
			     attributes, /*prefix_attributes=*/NULL_TREE,
			     &pushed_scope);
	  /* Parse the assignment-expression.  */
	  initializer
	    = FUNC5 (parser,
					     /*allow_non_constant_p=*/true,
					     &non_constant_p);
	  if (!non_constant_p)
	    initializer = FUNC13 (initializer);

	  /* Process the initializer.  */
	  FUNC1 (decl,
			  initializer, !non_constant_p,
			  asm_specification,
			  LOOKUP_ONLYCONVERTING);

	  if (pushed_scope)
	    FUNC14 (pushed_scope);

	  return FUNC0 (decl);
	}
    }
  /* If we didn't even get past the declarator successfully, we are
     definitely not looking at a declaration.  */
  else
    FUNC2 (parser);

  /* Otherwise, we are looking at an expression.  */
  return FUNC8 (parser, /*cast_p=*/false);
}