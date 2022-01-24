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
struct loop {scalar_t__ latch; unsigned int num_nodes; } ;
typedef  TYPE_1__* basic_block ;
struct TYPE_4__ {int /*<<< orphan*/  succs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EXIT_BLOCK_PTR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__** FUNC3 (struct loop const*) ; 

unsigned
FUNC4 (const struct loop *loop)
{
  unsigned i, n;
  basic_block * body;

  FUNC2 (loop->latch != EXIT_BLOCK_PTR);

  body = FUNC3 (loop);
  n = 0;
  for (i = 0; i < loop->num_nodes; i++)
    if (FUNC0 (body[i]->succs) >= 2)
      n++;
  FUNC1 (body);

  return n;
}