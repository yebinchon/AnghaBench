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
struct usbdrv_private {int DeviceOpened; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; int /*<<< orphan*/  pointer; } ;

/* Variables and functions */
 int E2BIG ; 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int IW_ESSID_MAX_SIZE ; 
 scalar_t__ FUNC0 (char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,int /*<<< orphan*/ ) ; 

int FUNC10(struct net_device *dev,
		struct iw_request_info *info,
		struct iw_point *essid, char *extra)
{
	char EssidBuf[IW_ESSID_MAX_SIZE + 1];
	struct usbdrv_private *macp = dev->ml_priv;

	if (!FUNC1(dev))
		return -EINVAL;

	if (essid->flags == 1) {
		if (essid->length > (IW_ESSID_MAX_SIZE + 1))
			return -E2BIG;

		if (FUNC0(&EssidBuf, essid->pointer, essid->length))
			return -EFAULT;

		EssidBuf[essid->length] = '\0';
		/* printk("siwessid - Set Essid : %s\n",EssidBuf); */
		/* printk("siwessid - Essid Len : %d\n",essid->length); */
		/* printk("siwessid - Essid Flag : %x\n",essid->flags); */
		if (macp->DeviceOpened == 1) {
			FUNC9(dev, EssidBuf, FUNC2(EssidBuf));
			FUNC8(dev, FUNC6(dev),
						FALSE);
			FUNC7(dev, FUNC5(dev));
			/* u8_t wpaieLen,wpaie[50]; */
			/* zfiWlanQueryWpaIe(dev, wpaie, &wpaieLen); */
			FUNC3(dev, 0);
			FUNC4(dev);
			/* if (wpaieLen > 2) */
			/* zfiWlanSetWpaIe(dev, wpaie, wpaieLen); */
		}
	}

	return 0;
}