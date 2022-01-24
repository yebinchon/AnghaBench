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
struct notifier_block {int /*<<< orphan*/  notifier_call; } ;
struct bus_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct bus_type*,struct notifier_block*) ; 
 int /*<<< orphan*/  dma_debug_device_change ; 
 scalar_t__ global_disable ; 
 struct notifier_block* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(struct bus_type *bus)
{
	struct notifier_block *nb;

	if (global_disable)
		return;

	nb = FUNC1(sizeof(struct notifier_block), GFP_KERNEL);
	if (nb == NULL) {
		FUNC2("dma_debug_add_bus: out of memory\n");
		return;
	}

	nb->notifier_call = dma_debug_device_change;

	FUNC0(bus, nb);
}