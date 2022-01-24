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
typedef  size_t u8_t ;
struct usbdrv_private {int DeviceOpened; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,size_t*) ; 

int FUNC3(struct net_device *dev,
			struct iw_request_info *info,
			struct iw_point *data, char *nickname)
{
	struct usbdrv_private *macp = dev->ml_priv;
	u8_t EssidLen;
	char EssidBuf[IW_ESSID_MAX_SIZE + 1];

	if (macp->DeviceOpened != 1)
		return 0;

	FUNC2(dev, &EssidBuf[0], &EssidLen);
	EssidBuf[EssidLen] = 0;

	data->flags = 1;
	data->length = FUNC1(EssidBuf);

	FUNC0(nickname, EssidBuf, data->length);

	return 0;
}