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
typedef  int /*<<< orphan*/  cp_token ;
struct TYPE_5__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4 (cp_parser *parser, cp_token *pragma_tok)
{
  if (FUNC0 (parser->lexer, CPP_OPEN_PAREN))
    (void) FUNC1 (parser, 0, NULL);
  FUNC2 (parser, pragma_tok);

  FUNC3 ();
}