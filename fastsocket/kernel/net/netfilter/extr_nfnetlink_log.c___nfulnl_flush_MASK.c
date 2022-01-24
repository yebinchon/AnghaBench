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
struct nfulnl_instance {scalar_t__ skb; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfulnl_instance*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfulnl_instance*) ; 

__attribute__((used)) static void
FUNC3(struct nfulnl_instance *inst)
{
	/* timer holds a reference */
	if (FUNC1(&inst->timer))
		FUNC2(inst);
	if (inst->skb)
		FUNC0(inst);
}