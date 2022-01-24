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
typedef  int /*<<< orphan*/  u16_t ;
struct usbdrv_private {int DeviceOpened; } ;
struct sockaddr {int /*<<< orphan*/ * sa_data; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ ZM_MODE_AP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ *) ; 

int FUNC6(struct net_device *dev, struct iw_request_info *info,
		struct sockaddr *MacAddr, char *extra)
{
	struct usbdrv_private *macp = dev->ml_priv;

	if (!FUNC0(dev))
		return -EINVAL;

	if (FUNC3(dev) == ZM_MODE_AP) {
		/* AP Mode */
		FUNC5(dev, (u16_t *)&MacAddr->sa_data[0]);
	} else {
		/* STA Mode */
		FUNC4(dev, &MacAddr->sa_data[0]);
	}

	if (macp->DeviceOpened == 1) {
		/* u8_t wpaieLen,wpaie[80]; */
		/* zfiWlanQueryWpaIe(dev, wpaie, &wpaieLen); */
		FUNC1(dev, 0);
		FUNC2(dev);
		/* if (wpaieLen > 2) */
		/* zfiWlanSetWpaIe(dev, wpaie, wpaieLen); */
	}

	return 0;
}