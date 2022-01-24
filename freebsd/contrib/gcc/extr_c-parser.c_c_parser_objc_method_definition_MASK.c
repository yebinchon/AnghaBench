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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  objc_method_attributes ; 
 int objc_pq_context ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11 (c_parser *parser)
{
  enum tree_code type = FUNC6 (parser);
  tree decl;
  FUNC8 (type);
  objc_pq_context = 1;
  decl = FUNC5 (parser);
  if (FUNC4 (parser, CPP_SEMICOLON))
    {
      FUNC2 (parser);
      if (pedantic)
	FUNC10 ("extra semicolon in method definition specified");
    }
  if (!FUNC4 (parser, CPP_OPEN_BRACE))
    {
      FUNC3 (parser, "expected %<{%>");
      return;
    }
  objc_pq_context = 0;
  /* APPLE LOCAL begin radar 3803157 - objc attribute (in 4.2 a) */
  FUNC9 (decl, objc_method_attributes);
  objc_method_attributes = NULL_TREE;
  /* APPLE LOCAL end radar 3803157 - objc attribute (in 4.2 a) */
  FUNC0 (FUNC1 (parser));
  FUNC7 (current_function_decl);
}