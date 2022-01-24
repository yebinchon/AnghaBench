#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
typedef  int /*<<< orphan*/  cp_token ;
struct TYPE_8__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/ * error_mark_node ; 

__attribute__((used)) static tree
FUNC8 (cp_parser *parser, cp_token *pragma_tok)
{
  tree stmt, name = NULL;

  if (FUNC2 (parser->lexer, CPP_OPEN_PAREN))
    {
      FUNC1 (parser->lexer);

      name = FUNC3 (parser);

      if (name == error_mark_node
	  || !FUNC5 (parser, CPP_CLOSE_PAREN, "`)'"))
	FUNC7 (parser, /*recovering=*/true,
					       /*or_comma=*/false,
					       /*consume_paren=*/true);
      if (name == error_mark_node)
	name = NULL;
    }
  FUNC6 (parser, pragma_tok);

  stmt = FUNC4 (parser);
  return FUNC0 (stmt, name);
}