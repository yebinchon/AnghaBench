#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_14__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  CPP_OPEN_SQUARE ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  RID_NEW ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static tree
FUNC16 (cp_parser* parser)
{
  bool global_scope_p;
  tree placement;
  tree type;
  tree initializer;
  tree nelts;

  /* Look for the optional `::' operator.  */
  global_scope_p
    = (FUNC4 (parser,
				   /*current_scope_valid_p=*/false)
       != NULL_TREE);
  /* Look for the `new' operator.  */
  FUNC12 (parser, RID_NEW, "`new'");
  /* There's no easy way to tell a new-placement from the
     `( type-id )' construct.  */
  FUNC10 (parser);
  /* Look for a new-placement.  */
  placement = FUNC6 (parser);
  /* If that didn't work out, there's no new-placement.  */
  if (!FUNC9 (parser))
    placement = NULL_TREE;

  /* If the next token is a `(', then we have a parenthesized
     type-id.  */
  if (FUNC2 (parser->lexer, CPP_OPEN_PAREN))
    {
      /* Consume the `('.  */
      FUNC1 (parser->lexer);
      /* Parse the type-id.  */
      type = FUNC13 (parser);
      /* Look for the closing `)'.  */
      FUNC11 (parser, CPP_CLOSE_PAREN, "`)'");
      /* There should not be a direct-new-declarator in this production,
	 but GCC used to allowed this, so we check and emit a sensible error
	 message for this case.  */
      if (FUNC2 (parser->lexer, CPP_OPEN_SQUARE))
	{
	  FUNC14 ("array bound forbidden after parenthesized type-id");
	  FUNC15 ("try removing the parentheses around the type-id");
	  FUNC3 (parser);
	}
      nelts = NULL_TREE;
    }
  /* Otherwise, there must be a new-type-id.  */
  else
    type = FUNC7 (parser, &nelts);

  /* If the next token is a `(', then we have a new-initializer.  */
  if (FUNC2 (parser->lexer, CPP_OPEN_PAREN))
    initializer = FUNC5 (parser);
  else
    initializer = NULL_TREE;

  /* A new-expression may not appear in an integral constant
     expression.  */
  if (FUNC8 (parser, "`new'"))
    return error_mark_node;

  /* Create a representation of the new-expression.  */
  return FUNC0 (placement, type, nelts, initializer, global_scope_p);
}