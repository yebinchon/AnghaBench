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
struct loop {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ COND_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (struct loop*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct loop*) ; 

__attribute__((used)) static tree
FUNC5 (struct loop *loop)
{
  tree expr = FUNC4 (loop);
  tree ivarop;
  tree test;
  if (expr == NULL_TREE)
    return NULL_TREE;
  if (FUNC1 (expr) != COND_EXPR)
    return NULL_TREE;
  test = FUNC2 (expr, 0);
  if (!FUNC0 (test))
    return NULL_TREE;

  /* Find the side that is invariant in this loop. The ivar must be the other
     side.  */
  
  if (FUNC3 (loop, FUNC2 (test, 0)))
      ivarop = FUNC2 (test, 1);
  else if (FUNC3 (loop, FUNC2 (test, 1)))
      ivarop = FUNC2 (test, 0);
  else
    return NULL_TREE;

  if (FUNC1 (ivarop) != SSA_NAME)
    return NULL_TREE;
  return ivarop;
}