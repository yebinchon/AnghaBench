#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_4__ {int dest_idx; } ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5 (basic_block dest, edge e1, edge e2)
{
  int n1 = e1->dest_idx;
  int n2 = e2->dest_idx;
  tree phi;

  for (phi = FUNC4 (dest); phi; phi = FUNC1 (phi))
    {
      tree val1 = FUNC0 (phi, n1);
      tree val2 = FUNC0 (phi, n2);

      FUNC2 (val1 != NULL_TREE);
      FUNC2 (val2 != NULL_TREE);

      if (!FUNC3 (val1, val2))
	return false;
    }

  return true;
}