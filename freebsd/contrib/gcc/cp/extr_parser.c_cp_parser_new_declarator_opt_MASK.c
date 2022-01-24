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
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_7__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;
typedef  int /*<<< orphan*/  cp_declarator ;
typedef  int /*<<< orphan*/  cp_cv_quals ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_OPEN_SQUARE ; 
 int INDIRECT_REF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static cp_declarator *
FUNC8 (cp_parser* parser)
{
  enum tree_code code;
  tree type;
  cp_cv_quals cv_quals;

  /* We don't know if there's a ptr-operator next, or not.  */
  FUNC3 (parser);
  /* Look for a ptr-operator.  */
  code = FUNC4 (parser, &type, &cv_quals);
  /* If that worked, look for more new-declarators.  */
  if (FUNC2 (parser))
    {
      cp_declarator *declarator;

      /* Parse another optional declarator.  */
      declarator = FUNC8 (parser);

      /* Create the representation of the declarator.  */
      if (type)
	declarator = FUNC6 (cv_quals, type, declarator);
      else if (code == INDIRECT_REF)
	declarator = FUNC5 (cv_quals, declarator);
      else
	declarator = FUNC7 (cv_quals, declarator);

      return declarator;
    }

  /* If the next token is a `[', there is a direct-new-declarator.  */
  if (FUNC0 (parser->lexer, CPP_OPEN_SQUARE))
    return FUNC1 (parser);

  return NULL;
}