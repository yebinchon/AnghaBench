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

/* Variables and functions */
 int /*<<< orphan*/  CONV_OLD_CONVERT ; 
 int LOOKUP_NORMAL ; 
 int LOOKUP_NO_CONVERSION ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 

tree
FUNC5 (tree type, tree expr)
{
  tree intype;

  if (type == error_mark_node || expr == error_mark_node)
    return error_mark_node;

  intype = FUNC1 (expr);

  if (FUNC0 (type) && FUNC0 (intype))
    return FUNC3 (FUNC2 (type, expr));

  return FUNC4 (type, expr, CONV_OLD_CONVERT,
		      LOOKUP_NORMAL|LOOKUP_NO_CONVERSION);
}