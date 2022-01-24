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
typedef  int /*<<< orphan*/ * tree ;
typedef  int /*<<< orphan*/  location_t ;

/* Variables and functions */
#define  BIND_EXPR 132 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
#define  COND_EXPR 131 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OPT_Wparentheses ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  STATEMENT_LIST 130 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  TRY_CATCH_EXPR 129 
#define  TRY_FINALLY_EXPR 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  void_type_node ; 
 scalar_t__ warn_parentheses ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

void
FUNC11 (location_t if_locus, tree cond, tree then_block,
		  tree else_block, bool nested_if)
{
  tree stmt;

  /* Diagnose an ambiguous else if if-then-else is nested inside if-then.  */
  if (warn_parentheses && nested_if && else_block == NULL)
    {
      tree inner_if = then_block;

      /* We know from the grammar productions that there is an IF nested
	 within THEN_BLOCK.  Due to labels and c99 conditional declarations,
	 it might not be exactly THEN_BLOCK, but should be the last
	 non-container statement within.  */
      while (1)
	switch (FUNC3 (inner_if))
	  {
	  case COND_EXPR:
	    goto found;
	  case BIND_EXPR:
	    inner_if = FUNC0 (inner_if);
	    break;
	  case STATEMENT_LIST:
	    inner_if = FUNC8 (then_block);
	    break;
	  case TRY_FINALLY_EXPR:
	  case TRY_CATCH_EXPR:
	    inner_if = FUNC4 (inner_if, 0);
	    break;
	  default:
	    FUNC9 ();
	  }
    found:

      if (FUNC1 (inner_if))
	 FUNC10 (OPT_Wparentheses,
		  "%Hsuggest explicit braces to avoid ambiguous %<else%>",
		  &if_locus);
    }

  FUNC7 (then_block, else_block);

  stmt = FUNC6 (COND_EXPR, void_type_node, cond, then_block, else_block);
  FUNC2 (stmt, if_locus);
  FUNC5 (stmt);
}