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
 scalar_t__ INTEGER_CST ; 
 scalar_t__ MINUS_EXPR ; 
 scalar_t__ PLUS_EXPR ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3 (tree expr)
{
  if (FUNC0 (expr) == SSA_NAME)
    return true;

  if (FUNC0 (expr) == PLUS_EXPR
      || FUNC0 (expr) == MINUS_EXPR)
    return (FUNC0 (FUNC1 (expr, 0)) == SSA_NAME
	    && FUNC0 (FUNC1 (expr, 1)) == INTEGER_CST);
  
  return FUNC2 (expr);
}