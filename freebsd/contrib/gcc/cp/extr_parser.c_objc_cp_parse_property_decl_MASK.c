#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_7__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;
typedef  int /*<<< orphan*/  cp_declarator ;
typedef  int /*<<< orphan*/  cp_decl_specifier_seq ;

/* Variables and functions */
 scalar_t__ CPP_COMMA ; 
 scalar_t__ CPP_EOF ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 int /*<<< orphan*/  CP_PARSER_DECLARATOR_NAMED ; 
 int /*<<< orphan*/  CP_PARSER_FLAGS_NONE ; 
 int /*<<< orphan*/  NORMAL ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (cp_parser *parser)
{
  int declares_class_or_enum;
  cp_decl_specifier_seq declspecs;
  
  FUNC3 (parser,
						  CP_PARSER_FLAGS_NONE,
						  &declspecs,
						  &declares_class_or_enum);
  /* Keep going until we hit the `;' at the end of the declaration. */
  while (FUNC2 (parser->lexer, CPP_SEMICOLON))
    {
      tree property;
      cp_token *token;
      cp_declarator *declarator
      = FUNC4 (parser, CP_PARSER_DECLARATOR_NAMED,
						NULL, NULL, false);
      property = FUNC5 (declarator, &declspecs, NORMAL,0, NULL);
      /* Revover from any kind of error in property declaration. */
      if (property == error_mark_node || property == NULL_TREE)
	return;
      /* Add to property list. */
      FUNC6 (FUNC0 (property));
      if (token->type == CPP_COMMA)
      {
	FUNC1 (parser->lexer);  /* Eat ','.  */
	continue;
      }
      else if (token->type == CPP_EOF)
	return;
    }
    FUNC1 (parser->lexer);  /* Eat ';'.  */
}