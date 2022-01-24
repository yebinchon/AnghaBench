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
typedef  int /*<<< orphan*/  location_t ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWITCH_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  bc_break ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 int /*<<< orphan*/  input_location ; 

__attribute__((used)) static void
FUNC9 (tree *stmt_p)
{
  tree stmt = *stmt_p;
  tree break_block, body;
  location_t stmt_locus = input_location;

  break_block = FUNC4 (bc_break);

  body = FUNC1 (stmt);
  if (!body)
    body = FUNC6 ();

  *stmt_p = FUNC5 (SWITCH_EXPR, FUNC3 (stmt),
		    FUNC2 (stmt), body, NULL_TREE);
  FUNC0 (*stmt_p, stmt_locus);
  FUNC8 (stmt_p);

  *stmt_p = FUNC7 (bc_break, break_block, *stmt_p);
}