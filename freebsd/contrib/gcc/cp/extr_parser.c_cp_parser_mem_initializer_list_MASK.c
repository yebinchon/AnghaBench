#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_4__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;
typedef  scalar_t__ TREE_CHAIN ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_COMMA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6 (cp_parser* parser)
{
  tree mem_initializer_list = NULL_TREE;

  /* Let the semantic analysis code know that we are starting the
     mem-initializer-list.  */
  if (!FUNC0 (current_function_decl))
    FUNC4 ("only constructors take base initializers");

  /* Loop through the list.  */
  while (true)
    {
      tree mem_initializer;

      /* Parse the mem-initializer.  */
      mem_initializer = FUNC3 (parser);
      /* Add it to the list, unless it was erroneous.  */
      if (mem_initializer != error_mark_node)
	{
	  TREE_CHAIN (mem_initializer) = mem_initializer_list;
	  mem_initializer_list = mem_initializer;
	}
      /* If the next token is not a `,', we're done.  */
      if (FUNC2 (parser->lexer, CPP_COMMA))
	break;
      /* Consume the `,' token.  */
      FUNC1 (parser->lexer);
    }

  /* Perform semantic analysis.  */
  if (FUNC0 (current_function_decl))
    FUNC5 (mem_initializer_list);
}