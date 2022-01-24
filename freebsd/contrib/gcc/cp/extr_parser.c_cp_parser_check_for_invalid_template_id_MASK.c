#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ cp_token_position ;
struct TYPE_5__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_LESS ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static void
FUNC9 (cp_parser* parser,
					 tree type)
{
  cp_token_position start = 0;

  if (FUNC3 (parser->lexer, CPP_LESS))
    {
      if (FUNC1 (type))
	FUNC8 ("%qT is not a template", type);
      else if (FUNC0 (type) == IDENTIFIER_NODE)
	FUNC8 ("%qE is not a template", type);
      else
	FUNC8 ("invalid template-id");
      /* Remember the location of the invalid "<".  */
      if (FUNC7 (parser))
	start = FUNC5 (parser->lexer, true);
      /* Consume the "<".  */
      FUNC2 (parser->lexer);
      /* Parse the template arguments.  */
      FUNC6 (parser);
      /* Permanently remove the invalid template arguments so that
	 this error message is not issued again.  */
      if (start)
	FUNC4 (parser->lexer, start);
    }
}