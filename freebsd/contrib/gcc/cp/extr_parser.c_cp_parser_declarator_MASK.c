#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_24__ {scalar_t__ type; } ;
typedef  TYPE_1__ cp_token ;
typedef  int /*<<< orphan*/  cp_parser_declarator_kind ;
struct TYPE_25__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;
struct TYPE_26__ {scalar_t__ attributes; } ;
typedef  TYPE_3__ cp_declarator ;
typedef  int /*<<< orphan*/  cp_cv_quals ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 scalar_t__ CPP_XOR ; 
 int /*<<< orphan*/  CP_PARSER_DECLARATOR_EITHER ; 
 int /*<<< orphan*/  CP_PARSER_DECLARATOR_NAMED ; 
 int INDIRECT_REF ; 
 scalar_t__ NULL_TREE ; 
 TYPE_3__* cp_error_declarator ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__*) ; 
 TYPE_3__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ flag_blocks ; 
 TYPE_3__* FUNC10 (scalar_t__,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static cp_declarator *
FUNC14 (cp_parser* parser,
		      cp_parser_declarator_kind dcl_kind,
		      int* ctor_dtor_or_conv_p,
		      bool* parenthesized_p,
		      bool member_p)
{
  cp_token *token;
  cp_declarator *declarator;
  enum tree_code code;
  cp_cv_quals cv_quals;
  tree class_type;
  tree attributes = NULL_TREE;

  /* Assume this is not a constructor, destructor, or type-conversion
     operator.  */
  if (ctor_dtor_or_conv_p)
    *ctor_dtor_or_conv_p = 0;

  if (FUNC3 (parser))
    attributes = FUNC4 (parser);

  /* Peek at the next token.  */
  token = FUNC2 (parser->lexer);

  /* APPLE LOCAL begin blocks 6040305 (cc) */
  if (flag_blocks && token->type == CPP_XOR)
    {
      cp_cv_quals quals;
      cp_declarator *inner;
      tree attrs;

      FUNC0 (parser->lexer);

      /* cp_parse_declspecs (parser, quals_attrs, false, false, true); */
      quals = FUNC5 (parser, &attrs);

      inner = FUNC14 (parser, CP_PARSER_DECLARATOR_EITHER, 
				    /*ctor_dtor_or_conv_p=*/NULL,
				    /*parenthesized_p=*/NULL,
				    /*member_p=*/false);
      if (inner == cp_error_declarator)
	return inner;
      return FUNC10 (attrs, quals, inner);
    }
  /* APPLE LOCAL end blocks 6040305 (cc) */

  /* Check for the ptr-operator production.  */
  FUNC8 (parser);
  /* Parse the ptr-operator.  */
  code = FUNC9 (parser,
				 &class_type,
				 &cv_quals);
  /* If that worked, then we have a ptr-operator.  */
  if (FUNC7 (parser))
    {
      /* If a ptr-operator was found, then this declarator was not
	 parenthesized.  */
      if (parenthesized_p)
	*parenthesized_p = true;
      /* The dependent declarator is optional if we are parsing an
	 abstract-declarator.  */
      if (dcl_kind != CP_PARSER_DECLARATOR_NAMED)
	FUNC8 (parser);

      /* Parse the dependent declarator.  */
      declarator = FUNC14 (parser, dcl_kind,
					 /*ctor_dtor_or_conv_p=*/NULL,
					 /*parenthesized_p=*/NULL,
					 /*member_p=*/false);

      /* If we are parsing an abstract-declarator, we must handle the
	 case where the dependent declarator is absent.  */
      if (dcl_kind != CP_PARSER_DECLARATOR_NAMED
	  && !FUNC7 (parser))
	declarator = NULL;

      /* Build the representation of the ptr-operator.  */
      if (class_type)
	declarator = FUNC12 (cv_quals,
					     class_type,
					     declarator);
      else if (code == INDIRECT_REF)
	declarator = FUNC11 (cv_quals, declarator);
      else
	declarator = FUNC13 (cv_quals, declarator);
    }
  /* Everything else is a direct-declarator.  */
  else
    {
      if (parenthesized_p)
	*parenthesized_p = FUNC1 (parser->lexer,
						   CPP_OPEN_PAREN);
      declarator = FUNC6 (parser, dcl_kind,
						ctor_dtor_or_conv_p,
						member_p);
    }

  if (attributes && declarator && declarator != cp_error_declarator)
    declarator->attributes = attributes;

  return declarator;
}