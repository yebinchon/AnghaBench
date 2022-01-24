#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct se_device {int dev_reservation_flags; int /*<<< orphan*/  dev_reservation_lock; TYPE_1__* transport; } ;
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ transport_type; } ;

/* Variables and functions */
 int DRF_SPC2_RESERVATIONS ; 
 scalar_t__ TRANSPORT_PLUGIN_PHBA_PDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char*) ; 
 int FUNC3 (struct se_device*,char*) ; 
 int FUNC4 (struct se_device*,char*) ; 

__attribute__((used)) static ssize_t FUNC5(struct se_device *dev,
		char *page)
{
	int ret;

	if (dev->transport->transport_type == TRANSPORT_PLUGIN_PHBA_PDEV)
		return FUNC2(page, "Passthrough\n");

	FUNC0(&dev->dev_reservation_lock);
	if (dev->dev_reservation_flags & DRF_SPC2_RESERVATIONS)
		ret = FUNC3(dev, page);
	else
		ret = FUNC4(dev, page);
	FUNC1(&dev->dev_reservation_lock);
	return ret;
}