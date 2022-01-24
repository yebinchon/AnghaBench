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
 int /*<<< orphan*/  CPP_CLOSE_BRACE ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  RID_NAMESPACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (cp_parser* parser)
{
  tree identifier, attribs;

  /* Look for the `namespace' keyword.  */
  FUNC5 (parser, RID_NAMESPACE, "`namespace'");

  /* Get the name of the namespace.  We do not attempt to distinguish
     between an original-namespace-definition and an
     extension-namespace-definition at this point.  The semantic
     analysis routines are responsible for that.  */
  if (FUNC0 (parser->lexer, CPP_NAME))
    identifier = FUNC2 (parser);
  else
    identifier = NULL_TREE;

  /* Parse any specified attributes.  */
  attribs = FUNC1 (parser);

  /* Look for the `{' to start the namespace.  */
  FUNC4 (parser, CPP_OPEN_BRACE, "`{'");
  /* Start the namespace.  */
  FUNC7 (identifier, attribs);
  /* Parse the body of the namespace.  */
  FUNC3 (parser);
  /* Finish the namespace.  */
  FUNC6 ();
  /* Look for the final `}'.  */
  FUNC4 (parser, CPP_CLOSE_BRACE, "`}'");
}