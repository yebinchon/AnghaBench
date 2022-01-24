#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC5 (cp_parser* parser)
{
  /* If the next token is a `;', then we have an empty
     expression-statement.  Grammatically, this is also a
     simple-declaration, but an invalid one, because it does not
     declare anything.  Therefore, if we did not handle this case
     specially, we would issue an error message about an invalid
     declaration.  */
  if (FUNC0 (parser->lexer, CPP_SEMICOLON))
    {
      /* We're going to speculatively look for a declaration, falling back
	 to an expression, if necessary.  */
      FUNC3 (parser);
      /* Parse the declaration.  */
      FUNC4 (parser,
				    /*function_definition_allowed_p=*/false);
      /* If the tentative parse failed, then we shall need to look for an
	 expression-statement.  */
      if (FUNC2 (parser))
	return;
    }

  FUNC1 (parser, false);
}