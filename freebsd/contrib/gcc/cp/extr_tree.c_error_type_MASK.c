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
 scalar_t__ ERROR_MARK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

tree
FUNC6 (tree arg)
{
  tree type = FUNC2 (arg);

  if (FUNC1 (type) == ARRAY_TYPE)
    ;
  else if (FUNC1 (type) == ERROR_MARK)
    ;
  else if (FUNC5 (arg))
    type = FUNC3 (FUNC4 (arg));
  else if (FUNC0 (type))
    type = FUNC4 (arg);

  return type;
}