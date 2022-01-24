#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct iio_dev {int num_interrupt_lines; TYPE_2__* event_interfaces; TYPE_2__* interrupts; int /*<<< orphan*/ * event_attrs; TYPE_1__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  iio_event_idr ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct iio_dev *dev_info)
{
	int i;

	if (dev_info->num_interrupt_lines == 0)
		return;
	for (i = 0; i < dev_info->num_interrupt_lines; i++)
		FUNC3(&dev_info->dev.kobj,
				   &dev_info->event_attrs[i]);

	for (i = 0; i < dev_info->num_interrupt_lines; i++) {
		FUNC1(&iio_event_idr,
				 dev_info->event_interfaces[i].id);
		FUNC0(&dev_info->event_interfaces[i]);
	}
	FUNC2(dev_info->interrupts);
	FUNC2(dev_info->event_interfaces);
}