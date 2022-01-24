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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_8__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_SQUARE ; 
 int /*<<< orphan*/  CPP_OPEN_SQUARE ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  RID_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  error_mark_node ; 

__attribute__((used)) static tree
FUNC8 (cp_parser* parser)
{
  bool global_scope_p;
  bool array_p;
  tree expression;

  /* Look for the optional `::' operator.  */
  global_scope_p
    = (FUNC2 (parser,
				   /*current_scope_valid_p=*/false)
       != NULL_TREE);
  /* Look for the `delete' keyword.  */
  FUNC5 (parser, RID_DELETE, "`delete'");
  /* See if the array syntax is in use.  */
  if (FUNC1 (parser->lexer, CPP_OPEN_SQUARE))
    {
      /* Consume the `[' token.  */
      FUNC0 (parser->lexer);
      /* Look for the `]' token.  */
      FUNC4 (parser, CPP_CLOSE_SQUARE, "`]'");
      /* Remember that this is the `[]' construct.  */
      array_p = true;
    }
  else
    array_p = false;

  /* Parse the cast-expression.  */
  expression = FUNC6 (parser);

  /* A delete-expression may not appear in an integral constant
     expression.  */
  if (FUNC3 (parser, "`delete'"))
    return error_mark_node;

  return FUNC7 (expression, NULL_TREE, array_p, global_scope_p);
}