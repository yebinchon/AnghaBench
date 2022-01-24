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
struct udc {scalar_t__ connected; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  disconnect_tasklet ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct udc*) ; 

__attribute__((used)) static void FUNC3(struct udc *dev)
{

	FUNC0(&dev->pdev->dev, "USB Disconnect\n");

	dev->connected = 0;

	/* mask interrupts */
	FUNC2(dev);

	/* REVISIT there doesn't seem to be a point to having this
	 * talk to a tasklet ... do it directly, we already hold
	 * the spinlock needed to process the disconnect.
	 */

	FUNC1(&disconnect_tasklet);
}