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
 scalar_t__ ARRAY_TYPE ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sizetype ; 

tree
FUNC4 (tree type)
{
  tree sz = FUNC2 (type);
  type = FUNC1 (type);
  while (FUNC0 (type) == ARRAY_TYPE)
    {
      tree n = FUNC2 (type);
      sz = FUNC3 (MULT_EXPR, sizetype, sz, n);
      type = FUNC1 (type);
    }
  return sz;
}