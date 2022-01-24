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
struct loop {unsigned int num_nodes; int /*<<< orphan*/  latch; } ;
typedef  int /*<<< orphan*/  bitmap ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (struct loop *loop, basic_block *body,
			bitmap may_exit, bitmap always_reached)
{
  unsigned i;

  for (i = 0; i < loop->num_nodes; i++)
    {
      if (FUNC2 (CDI_DOMINATORS, loop->latch, body[i]))
	FUNC1 (always_reached, i);

      if (FUNC0 (may_exit, i))
	return;
    }
}