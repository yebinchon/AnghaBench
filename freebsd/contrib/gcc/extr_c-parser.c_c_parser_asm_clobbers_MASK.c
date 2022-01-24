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
 int /*<<< orphan*/  CPP_COMMA ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC4 (c_parser *parser)
{
  tree list = NULL_TREE;
  while (true)
    {
      tree str = FUNC0 (parser);
      if (str)
	list = FUNC3 (NULL_TREE, str, list);
      else
	return NULL_TREE;
      if (FUNC2 (parser, CPP_COMMA))
	FUNC1 (parser);
      else
	break;
    }
  return list;
}