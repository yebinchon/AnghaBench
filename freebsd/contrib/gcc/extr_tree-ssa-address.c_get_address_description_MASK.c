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
struct mem_address {int /*<<< orphan*/  offset; int /*<<< orphan*/  step; int /*<<< orphan*/  index; int /*<<< orphan*/  base; int /*<<< orphan*/  symbol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5 (tree op, struct mem_address *addr)
{
  addr->symbol = FUNC4 (op);
  addr->base = FUNC0 (op);
  addr->index = FUNC1 (op);
  addr->step = FUNC3 (op);
  addr->offset = FUNC2 (op);
}