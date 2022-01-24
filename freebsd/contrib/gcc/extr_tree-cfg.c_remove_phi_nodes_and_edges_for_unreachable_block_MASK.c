#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  TYPE_1__* basic_block ;
struct TYPE_5__ {int /*<<< orphan*/  succs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (basic_block bb)
{
  tree phi;

  /* Since this block is no longer reachable, we can just delete all
     of its PHI nodes.  */
  phi = FUNC3 (bb);
  while (phi)
    {
      tree next = FUNC2 (phi);
      FUNC5 (phi, NULL_TREE);
      phi = next;
    }

  /* Remove edges to BB's successors.  */
  while (FUNC0 (bb->succs) > 0)
    FUNC4 (FUNC1 (bb, 0));
}