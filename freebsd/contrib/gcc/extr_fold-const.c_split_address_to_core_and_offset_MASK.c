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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int*,int*,int*,int) ; 

__attribute__((used)) static tree
FUNC4 (tree exp,
				  HOST_WIDE_INT *pbitpos, tree *poffset)
{
  tree core;
  enum machine_mode mode;
  int unsignedp, volatilep;
  HOST_WIDE_INT bitsize;

  if (FUNC0 (exp) == ADDR_EXPR)
    {
      core = FUNC3 (FUNC1 (exp, 0), &bitsize, pbitpos,
				  poffset, &mode, &unsignedp, &volatilep,
				  false);
      core = FUNC2 (core);
    }
  else
    {
      core = exp;
      *pbitpos = 0;
      *poffset = NULL_TREE;
    }

  return core;
}