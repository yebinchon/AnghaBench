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
typedef  int /*<<< orphan*/  bitmap ;
typedef  scalar_t__ basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5 (basic_block bb, bitmap interesting_names)
{
  tree phi, next;
  basic_block son;

  for (phi = FUNC4 (bb); phi; phi = next)
    {
      next = FUNC0 (phi);
      FUNC1 (phi, interesting_names);
    }

  /* Recurse into the dominator children of BB.  */
  for (son = FUNC2 (CDI_DOMINATORS, bb);
       son;
       son = FUNC3 (CDI_DOMINATORS, son))
    FUNC5 (son, interesting_names);
}