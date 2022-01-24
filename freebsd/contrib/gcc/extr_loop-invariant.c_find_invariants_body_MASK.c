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
struct loop {unsigned int num_nodes; } ;
typedef  int /*<<< orphan*/  bitmap ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (struct loop *loop, basic_block *body,
		      bitmap always_reached, bitmap always_executed)
{
  unsigned i;

  for (i = 0; i < loop->num_nodes; i++)
    FUNC1 (body[i],
			FUNC0 (always_reached, i),
			FUNC0 (always_executed, i));
}