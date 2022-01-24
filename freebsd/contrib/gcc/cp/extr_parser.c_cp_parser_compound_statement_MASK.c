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
 int /*<<< orphan*/  BCS_TRY_BLOCK ; 
 int /*<<< orphan*/  CPP_CLOSE_BRACE ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC5 (cp_parser *parser, tree in_statement_expr,
			      /* APPLE LOCAL radar 5982990 */
			      bool in_try, bool objc_sjlj_exceptions)
{
  tree compound_stmt;

  /* Consume the `{'.  */
  if (!FUNC1 (parser, CPP_OPEN_BRACE, "`{'"))
    return error_mark_node;
  /* Begin the compound-statement.  */
  compound_stmt = FUNC0 (in_try ? BCS_TRY_BLOCK : 0);
  /* Parse an (optional) statement-seq.  */
  FUNC2 (parser, in_statement_expr);
  /* APPLE LOCAL begin radar 5982990 */
  if (objc_sjlj_exceptions)
    FUNC4 (NULL);
  /* APPLE LOCAL end radar 5982990 */
  /* Finish the compound-statement.  */
  FUNC3 (compound_stmt);
  /* Consume the `}'.  */
  FUNC1 (parser, CPP_CLOSE_BRACE, "`}'");

  return compound_stmt;
}