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
 int CONV_FORCE_TEMP ; 
 int CONV_IMPLICIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 scalar_t__ TARGET_EXPR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

tree
FUNC5 (tree expr)
{
  if (FUNC0 (FUNC2 (expr)) && FUNC1 (expr) != TARGET_EXPR)
    expr = FUNC4 (FUNC2 (expr), expr,
			CONV_IMPLICIT|CONV_FORCE_TEMP, LOOKUP_NORMAL);
  else
    expr = FUNC3 (expr);

  return expr;
}