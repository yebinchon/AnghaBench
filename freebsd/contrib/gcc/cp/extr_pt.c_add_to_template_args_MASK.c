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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static tree
FUNC4 (tree args, tree extra_args)
{
  tree new_args;
  int extra_depth;
  int i;
  int j;

  extra_depth = FUNC1 (extra_args);
  new_args = FUNC3 (FUNC1 (args) + extra_depth);

  for (i = 1; i <= FUNC1 (args); ++i)
    FUNC0 (new_args, i, FUNC2 (args, i));

  for (j = 1; j <= extra_depth; ++j, ++i)
    FUNC0 (new_args, i, FUNC2 (extra_args, j));

  return new_args;
}