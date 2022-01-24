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
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4 (tree expr)
{
  if (FUNC1 (expr) == INTEGER_CST)
    return true;

  if ((FUNC1 (expr) == NOP_EXPR || FUNC1 (expr) == CONVERT_EXPR)
      && FUNC0 (FUNC3 (FUNC2 (expr, 0))))
    return true;

  return false;
}