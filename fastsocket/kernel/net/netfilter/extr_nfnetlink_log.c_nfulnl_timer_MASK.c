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
struct nfulnl_instance {int /*<<< orphan*/  lock; scalar_t__ skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfulnl_instance*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfulnl_instance*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(unsigned long data)
{
	struct nfulnl_instance *inst = (struct nfulnl_instance *)data;

	FUNC2(&inst->lock);
	if (inst->skb)
		FUNC0(inst);
	FUNC3(&inst->lock);
	FUNC1(inst);
}