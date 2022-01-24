#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_EQ ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 int /*<<< orphan*/  RID_NAMESPACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 

__attribute__((used)) static void
FUNC5 (cp_parser* parser)
{
  tree identifier;
  tree namespace_specifier;

  /* Look for the `namespace' keyword.  */
  FUNC3 (parser, RID_NAMESPACE, "`namespace'");
  /* Look for the identifier.  */
  identifier = FUNC0 (parser);
  if (identifier == error_mark_node)
    return;
  /* Look for the `=' token.  */
  FUNC2 (parser, CPP_EQ, "`='");
  /* Look for the qualified-namespace-specifier.  */
  namespace_specifier
    = FUNC1 (parser);
  /* Look for the `;' token.  */
  FUNC2 (parser, CPP_SEMICOLON, "`;'");

  /* Register the alias in the symbol table.  */
  FUNC4 (identifier, namespace_specifier);
}