#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
struct TYPE_15__ {scalar_t__ value; } ;
struct TYPE_16__ {scalar_t__ keyword; TYPE_1__ u; } ;
typedef  TYPE_2__ cp_token ;
struct TYPE_17__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_3__ cp_parser ;
typedef  int /*<<< orphan*/  cp_declarator ;
typedef  int /*<<< orphan*/  cp_decl_specifier_seq ;
struct TYPE_14__ {int type; } ;

/* Variables and functions */
#define  CPP_MINUS 135 
#define  CPP_MINUS_MINUS 134 
#define  CPP_MULT 133 
#define  CPP_NAME 132 
#define  CPP_OPEN_PAREN 131 
#define  CPP_OPEN_SQUARE 130 
#define  CPP_PLUS 129 
#define  CPP_PLUS_PLUS 128 
 int /*<<< orphan*/  CP_PARSER_DECLARATOR_NAMED ; 
 int /*<<< orphan*/  CP_PARSER_FLAGS_OPTIONAL ; 
 scalar_t__ IDENTIFIER_NODE ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ RID_ENUM ; 
 scalar_t__ RID_IN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cp_error_declarator ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_13__* FUNC5 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__* ridpointers ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static bool
FUNC16 (cp_parser *parser)
{
  int decl_spec_declares_class_or_enum;
  bool is_cv_qualifier;
  tree type_spec;
  cp_decl_specifier_seq decl_specs;
  tree node;
  cp_token *token;
  bool is_legit_foreach = false;
  cp_declarator *declarator;

  /* Exclude class/struct/enum type definition in for-loop header, which is 
     aparently legal in c++. Otherwise, it causes side-effect (type is enterred
     in function's scope) when type is re-parsed. */
  token = FUNC6 (parser->lexer);
  if (FUNC12 (token) || token->keyword == RID_ENUM)
    return false;

  FUNC11 (parser); 
  FUNC2 (&decl_specs);
  type_spec
    = FUNC13 (parser, CP_PARSER_FLAGS_OPTIONAL,
				 &decl_specs,
				 /*is_declaration=*/true,
				 &decl_spec_declares_class_or_enum,
				 &is_cv_qualifier);
  declarator
    = FUNC9 (parser, CP_PARSER_DECLARATOR_NAMED,
			     NULL,
			     /*parenthesized_p=*/NULL,
			     /*member_p=*/false);
  if (declarator == cp_error_declarator)
    {
      FUNC7 (parser);
      return false;
    }

  token = FUNC6 (parser->lexer);

  node = token->u.value; 
  if (node && FUNC0 (node) == IDENTIFIER_NODE
      && node == ridpointers [(int) RID_IN])
    {   
      enum cpp_ttype nt = FUNC5 (parser->lexer, 2)->type;
      switch (nt)
	 {
	   case CPP_NAME:
	   case CPP_OPEN_PAREN:
	   case CPP_MULT:
	   case CPP_PLUS: case CPP_PLUS_PLUS:
	   case CPP_MINUS: case CPP_MINUS_MINUS:
	   case CPP_OPEN_SQUARE:
	      is_legit_foreach = true;
	       default:
	        break;
	 }
    }
  if (is_legit_foreach)
    {
      tree pushed_scope = NULL;
      tree decl;
      if (type_spec)
	{
	  /* we have: 'for (type selector in...)' */
	  FUNC8 (parser);
	   decl = FUNC15 (declarator, &decl_specs,
			      false /*is_initialized*/,
			      NULL_TREE /*attributes*/,
			      NULL_TREE /*prefix_attributes*/,
			      &pushed_scope);
	   /* APPLE LOCAL begin radar 5130983 */
	   if (!decl || decl == error_mark_node)
	     {
	       FUNC14 ("selector is undeclared");
	       is_legit_foreach = false;
	     }
	   else
	     FUNC3 (decl,
			     NULL_TREE /*initializer*/,
			    false /*init_const_expr_p=*/,
			     NULL_TREE /*asm_specification*/,
			     0 /*flags */);
	}
      else {
	 tree statement;
	 /* we have: 'for (selector in...)' */
	 /* Parse it as an expression. */
	 FUNC7 (parser);
	 statement = FUNC10 (parser, /*cast_p=*/false);
	 FUNC1 (statement);
      }
      /* APPLE LOCAL end radar 5130983 */
      /* Consume the 'in' token */
      FUNC4 (parser->lexer);
    }
  else
    FUNC7 (parser);
  return is_legit_foreach;
}