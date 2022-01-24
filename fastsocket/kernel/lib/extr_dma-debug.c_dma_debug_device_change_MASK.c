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
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  BUS_NOTIFY_UNBOUND_DRIVER 128 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ global_disable ; 

__attribute__((used)) static int FUNC2(struct notifier_block *nb, unsigned long action, void *data)
{
	struct device *dev = data;
	int count;

	if (global_disable)
		return 0;

	switch (action) {
	case BUS_NOTIFY_UNBOUND_DRIVER:
		count = FUNC0(dev);
		if (count == 0)
			break;
		FUNC1(dev, NULL, "DMA-API: device driver has pending "
				"DMA allocations while released from device "
				"[count=%d]\n", count);
		break;
	default:
		break;
	}

	return 0;
}