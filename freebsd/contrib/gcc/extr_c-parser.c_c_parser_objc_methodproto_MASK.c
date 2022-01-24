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
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  RID_AT_OPTIONAL ; 
 int /*<<< orphan*/  RID_AT_REQUIRED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  objc_method_attributes ; 
 int objc_pq_context ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8 (c_parser *parser)
{
  /* APPLE LOCAL C* language */
  enum tree_code type;
  tree decl;
  /* APPLE LOCAL begin C* language */
  if (FUNC1 (parser, RID_AT_REQUIRED))
    {
      FUNC6 (0);
      FUNC0 (parser);
      return;
    }
  if (FUNC1 (parser, RID_AT_OPTIONAL))
    {
      FUNC6 (1);
      FUNC0 (parser);
      return;
    }
  /* APPLE LOCAL begin C* language */
  /* APPLE LOCAL C* language */
  type = FUNC3 (parser);
  FUNC7 (type);
  /* Remember protocol qualifiers in prototypes.  */
  objc_pq_context = 1;
  decl = FUNC2 (parser);
  /* Forget protocol qualifiers here.  */
  objc_pq_context = 0;
  /* APPLE LOCAL begin radar 3803157 - objc attribute (in 4.2 c) */
  FUNC5 (decl, objc_method_attributes);
  objc_method_attributes = NULL_TREE;
  /* APPLE LOCAL end radar 3803157 - objc attribute (in 4.2 c) */
  FUNC4 (parser, CPP_SEMICOLON, "expected %<;%>");
}