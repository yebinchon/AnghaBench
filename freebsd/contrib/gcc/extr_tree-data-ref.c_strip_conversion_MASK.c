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

/* Variables and functions */
 scalar_t__ CONVERT_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NOP_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree 
FUNC6 (tree expr)
{
  tree to, ti, oprnd0;
  
  while (FUNC2 (expr) == NOP_EXPR || FUNC2 (expr) == CONVERT_EXPR)
    {
      to = FUNC4 (expr);
      oprnd0 = FUNC3 (expr, 0);
      ti = FUNC4 (oprnd0);
 
      if (!FUNC1 (to) || !FUNC1 (ti))
	return NULL_TREE;
      if (FUNC0 (FUNC5 (to)) < FUNC0 (FUNC5 (ti)))
	return NULL_TREE;
      
      expr = oprnd0;
    }
  return expr; 
}