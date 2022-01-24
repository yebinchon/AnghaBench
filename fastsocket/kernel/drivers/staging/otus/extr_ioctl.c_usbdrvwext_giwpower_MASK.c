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
struct usbdrv_private {int DeviceOpened; int /*<<< orphan*/  cs_lock; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int disabled; } ;

/* Variables and functions */
 scalar_t__ ZM_STA_PS_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *dev,
		struct iw_request_info *info,
		struct iw_param *frq, char *extra)
{
	unsigned long irqFlag;
	struct usbdrv_private *macp = dev->ml_priv;

	if (macp->DeviceOpened != 1)
		return 0;

	FUNC0(&macp->cs_lock, irqFlag);

	if (FUNC2(dev) == ZM_STA_PS_NONE)
		frq->disabled = 1;
	else
		frq->disabled = 0;

	FUNC1(&macp->cs_lock, irqFlag);

	return 0;
}