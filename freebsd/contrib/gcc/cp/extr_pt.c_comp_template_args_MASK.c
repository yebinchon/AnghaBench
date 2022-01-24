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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3 (tree oldargs, tree newargs)
{
  int i;

  if (FUNC1 (oldargs) != FUNC1 (newargs))
    return 0;

  for (i = 0; i < FUNC1 (oldargs); ++i)
    {
      tree nt = FUNC0 (newargs, i);
      tree ot = FUNC0 (oldargs, i);

      if (! FUNC2 (ot, nt))
	return 0;
    }
  return 1;
}