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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_evaluation_order ; 

__attribute__((used)) static bool
FUNC2 (tree arg0, tree arg1)
{
  if (! flag_evaluation_order)
      return true;
  if (FUNC0 (arg0) || FUNC0 (arg1))
    return true;
  return ! FUNC1 (arg0)
	 && ! FUNC1 (arg1);
}