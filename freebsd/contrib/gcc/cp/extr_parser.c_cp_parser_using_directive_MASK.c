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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 int /*<<< orphan*/  RID_NAMESPACE ; 
 int /*<<< orphan*/  RID_USING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (cp_parser* parser)
{
  tree namespace_decl;
  tree attribs;

  /* Look for the `using' keyword.  */
  FUNC5 (parser, RID_USING, "`using'");
  /* And the `namespace' keyword.  */
  FUNC5 (parser, RID_NAMESPACE, "`namespace'");
  /* Look for the optional `::' operator.  */
  FUNC1 (parser, /*current_scope_valid_p=*/false);
  /* And the optional nested-name-specifier.  */
  FUNC3 (parser,
				       /*typename_keyword_p=*/false,
				       /*check_dependency_p=*/true,
				       /*type_p=*/false,
				       /*is_declaration=*/true);
  /* Get the namespace being used.  */
  namespace_decl = FUNC2 (parser);
  /* And any specified attributes.  */
  attribs = FUNC0 (parser);
  /* Update the symbol table.  */
  FUNC6 (namespace_decl, attribs);
  /* Look for the final `;'.  */
  FUNC4 (parser, CPP_SEMICOLON, "`;'");
}