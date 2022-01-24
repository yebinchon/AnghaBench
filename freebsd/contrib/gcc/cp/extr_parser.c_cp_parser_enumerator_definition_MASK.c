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
typedef  scalar_t__ tree ;
struct TYPE_5__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_EQ ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ error_mark_node ; 

__attribute__((used)) static void
FUNC5 (cp_parser* parser, tree type)
{
  tree identifier;
  tree value;

  /* Look for the identifier.  */
  identifier = FUNC4 (parser);
  if (identifier == error_mark_node)
    return;

  /* If the next token is an '=', then there is an explicit value.  */
  if (FUNC2 (parser->lexer, CPP_EQ))
    {
      /* Consume the `=' token.  */
      FUNC1 (parser->lexer);
      /* Parse the value.  */
      value = FUNC3 (parser,
					     /*allow_non_constant_p=*/false,
					     NULL);
    }
  else
    value = NULL_TREE;

  /* Create the enumerator.  */
  FUNC0 (identifier, value, type);
}