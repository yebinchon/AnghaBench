#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ keyword; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_15__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;

/* Variables and functions */
 scalar_t__ RID_ASM ; 
 scalar_t__ RID_LABEL ; 
 scalar_t__ RID_NAMESPACE ; 
 scalar_t__ RID_USING ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int pedantic ; 

__attribute__((used)) static void
FUNC10 (cp_parser *parser,
			     bool      statement_p)
{
  cp_token *token1;
  int saved_pedantic;

  /* Check for the `__extension__' keyword.  */
  if (FUNC4 (parser, &saved_pedantic))
    {
      /* Parse the qualified declaration.  */
      FUNC10 (parser, statement_p);
      /* Restore the PEDANTIC flag.  */
      pedantic = saved_pedantic;

      return;
    }

  /* Peek at the next token to figure out which kind of declaration is
     present.  */
  token1 = FUNC1 (parser->lexer);

  /* If the next keyword is `asm', we have an asm-definition.  */
  if (token1->keyword == RID_ASM)
    {
      if (statement_p)
	FUNC3 (parser);
      FUNC2 (parser);
    }
  /* If the next keyword is `namespace', we have a
     namespace-alias-definition.  */
  else if (token1->keyword == RID_NAMESPACE)
    FUNC6 (parser);
  /* If the next keyword is `using', we have either a
     using-declaration or a using-directive.  */
  else if (token1->keyword == RID_USING)
    {
      cp_token *token2;

      if (statement_p)
	FUNC3 (parser);
      /* If the token after `using' is `namespace', then we have a
	 using-directive.  */
      token2 = FUNC0 (parser->lexer, 2);
      if (token2->keyword == RID_NAMESPACE)
	FUNC9 (parser);
      /* Otherwise, it's a using-declaration.  */
      else
	FUNC8 (parser,
				     /*access_declaration_p=*/false);
    }
  /* If the next keyword is `__label__' we have a label declaration.  */
  else if (token1->keyword == RID_LABEL)
    {
      if (statement_p)
	FUNC3 (parser);
      FUNC5 (parser);
    }
  /* Anything else must be a simple-declaration.  */
  else
    FUNC7 (parser, !statement_p);
}