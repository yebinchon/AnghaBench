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
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  error_mark_node ; 
 scalar_t__ flag_objc_sjlj_exceptions ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC5 (c_parser *parser)
{
  tree stmt;
  if (!FUNC3 (parser, CPP_OPEN_BRACE, "expected %<{%>"))
    return error_mark_node;
  stmt = FUNC0 (true);
  FUNC2 (parser);
  if (flag_objc_sjlj_exceptions)
    FUNC4 (NULL);
  return FUNC1 (stmt, true);
}