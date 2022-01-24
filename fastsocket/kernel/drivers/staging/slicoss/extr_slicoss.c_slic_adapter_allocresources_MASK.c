#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct adapter {int intrregistered; TYPE_3__* netdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {TYPE_1__ driver_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_2__ slic_global ; 
 int /*<<< orphan*/  slic_interrupt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct adapter *adapter)
{
	if (!adapter->intrregistered) {
		int retval;

		FUNC3(&slic_global.driver_lock.lock,
					slic_global.driver_lock.flags);

		retval = FUNC1(adapter->netdev->irq,
				     &slic_interrupt,
				     IRQF_SHARED,
				     adapter->netdev->name, adapter->netdev);

		FUNC2(&slic_global.driver_lock.lock,
					slic_global.driver_lock.flags);

		if (retval) {
			FUNC0(&adapter->netdev->dev,
				"request_irq (%s) FAILED [%x]\n",
				adapter->netdev->name, retval);
			return retval;
		}
		adapter->intrregistered = 1;
	}
	return STATUS_SUCCESS;
}