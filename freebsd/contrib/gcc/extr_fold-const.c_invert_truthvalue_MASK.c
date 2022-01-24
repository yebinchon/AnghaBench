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
 scalar_t__ ERROR_MARK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  TRUTH_NOT_EXPR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

tree
FUNC4 (tree arg)
{
  tree tem;

  if (FUNC0 (arg) == ERROR_MARK)
    return arg;

  tem = FUNC3 (arg);
  if (!tem)
    tem = FUNC2 (TRUTH_NOT_EXPR, FUNC1 (arg), arg);

  return tem;
}