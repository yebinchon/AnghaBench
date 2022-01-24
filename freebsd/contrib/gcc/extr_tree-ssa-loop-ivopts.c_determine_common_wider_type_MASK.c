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

/* Variables and functions */
 scalar_t__ CONVERT_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC4 (tree *a, tree *b)
{
  tree wider_type = NULL;
  tree suba, subb;
  tree atype = FUNC2 (*a);

  if ((FUNC0 (*a) == NOP_EXPR
       || FUNC0 (*a) == CONVERT_EXPR))
    {
      suba = FUNC1 (*a, 0);
      wider_type = FUNC2 (suba);
      if (FUNC3 (wider_type) < FUNC3 (atype))
	return atype;
    }
  else
    return atype;

  if ((FUNC0 (*b) == NOP_EXPR
       || FUNC0 (*b) == CONVERT_EXPR))
    {
      subb = FUNC1 (*b, 0);
      if (FUNC3 (wider_type) != FUNC3 (FUNC2 (subb)))
	return atype;
    }
  else
    return atype;

  *a = suba;
  *b = subb;
  return wider_type;
}