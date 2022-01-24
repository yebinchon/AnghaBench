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
union iwreq_data {int mode; } ;
typedef  int /*<<< orphan*/  u8_t ;
struct usbdrv_private {int DeviceOpened; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IW_MODE_ADHOC 130 
#define  IW_MODE_INFRA 129 
#define  IW_MODE_MASTER 128 
 int /*<<< orphan*/  ZM_MODE_AP ; 
 int /*<<< orphan*/  ZM_MODE_IBSS ; 
 int /*<<< orphan*/  ZM_MODE_INFRASTRUCTURE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 

int FUNC4(struct net_device *dev,
		struct iw_request_info *info,
		union iwreq_data *wrq, char *extra)
{
	struct usbdrv_private *macp = dev->ml_priv;
	u8_t WlanMode;

	if (!FUNC0(dev))
		return -EINVAL;

	if (macp->DeviceOpened != 1)
		return 0;

	switch (wrq->mode) {
	case IW_MODE_MASTER:
		WlanMode = ZM_MODE_AP;
		break;
	case IW_MODE_INFRA:
		WlanMode = ZM_MODE_INFRASTRUCTURE;
		break;
	case IW_MODE_ADHOC:
		WlanMode = ZM_MODE_IBSS;
		break;
	default:
		WlanMode = ZM_MODE_IBSS;
		break;
	}

	FUNC3(dev, WlanMode);
	FUNC1(dev, 1);
	FUNC2(dev);

	return 0;
}