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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (tree parent, tree binfo)
{
  tree probe;

  for (probe = parent; probe; probe = FUNC0 (probe))
    {
      if (probe == binfo)
	return 1;
      if (FUNC2 (probe))
	return (FUNC3 (FUNC1 (probe), FUNC1 (binfo))
		!= NULL_TREE);
    }
  return 0;
}