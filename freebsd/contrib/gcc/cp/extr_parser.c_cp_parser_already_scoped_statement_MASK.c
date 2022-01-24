#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_BRACE ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (cp_parser* parser)
{
  /* If the token is a `{', then we must take special action.  */
  if (FUNC0 (parser->lexer, CPP_OPEN_BRACE))
    FUNC2 (parser, NULL_TREE, false, NULL);
  else
    {
      /* Avoid calling cp_parser_compound_statement, so that we
	 don't create a new scope.  Do everything else by hand.  */
      FUNC1 (parser, CPP_OPEN_BRACE, "`{'");
      FUNC3 (parser, NULL_TREE);
      FUNC1 (parser, CPP_CLOSE_BRACE, "`}'");
    }
}