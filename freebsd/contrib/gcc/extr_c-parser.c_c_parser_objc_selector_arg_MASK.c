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
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_COLON ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC5 (c_parser *parser)
{
  tree sel = FUNC2 (parser);
  tree list = NULL_TREE;
  if (sel && FUNC1 (parser, CPP_COLON))
    return sel;
  while (true)
    {
      if (!FUNC3 (parser, CPP_COLON, "expected %<:%>"))
	return list;
      list = FUNC4 (list, FUNC0 (sel, NULL_TREE));
      sel = FUNC2 (parser);
      if (!sel && FUNC1 (parser, CPP_COLON))
	break;
    }
  return list;
}