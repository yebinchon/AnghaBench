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
struct zsKeyInfo {char* key; int keyIndex; int /*<<< orphan*/  flag; int /*<<< orphan*/  keyLength; } ;
struct usbdrv_private {int DeviceOpened; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int IW_ENCODE_DISABLED ; 
 int IW_ENCODE_INDEX ; 
 int ZM_ENCRYPTION_WEP_DISABLED ; 
 int ZM_ENCRYPTION_WEP_ENABLED ; 
 int /*<<< orphan*/  ZM_KEY_FLAG_DEFAULT_KEY ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,struct zsKeyInfo) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int) ; 

int FUNC8(struct net_device *dev,
		struct iw_request_info *info,
		struct iw_point *erq, char *key)
{
	struct zsKeyInfo keyInfo;
	int i;
	int WepState = ZM_ENCRYPTION_WEP_DISABLED;
	struct usbdrv_private *macp = dev->ml_priv;

	if (!FUNC0(dev))
		return -EINVAL;

	if ((erq->flags & IW_ENCODE_DISABLED) == 0) {
		keyInfo.key = key;
		keyInfo.keyLength = erq->length;
		keyInfo.keyIndex = (erq->flags & IW_ENCODE_INDEX) - 1;
		if (keyInfo.keyIndex >= 4)
			keyInfo.keyIndex = 0;
		keyInfo.flag = ZM_KEY_FLAG_DEFAULT_KEY;

		FUNC6(dev, keyInfo);
		WepState = ZM_ENCRYPTION_WEP_ENABLED;
	} else {
		for (i = 1; i < 4; i++)
			FUNC4(dev, 0, i);
		WepState = ZM_ENCRYPTION_WEP_DISABLED;
		/* zfiWlanSetEncryMode(dev, ZM_NO_WEP); */
	}

	if (macp->DeviceOpened == 1) {
		FUNC7(dev, WepState);
		FUNC5(dev, FUNC3(dev), FALSE);
		/* zfiWlanSetEncryMode(dev, zfiWlanQueryEncryMode(dev)); */
		/* u8_t wpaieLen,wpaie[50]; */
		/* zfiWlanQueryWpaIe(dev, wpaie, &wpaieLen); */
		FUNC1(dev, 0);
		FUNC2(dev);
		/* if (wpaieLen > 2) */
		/* zfiWlanSetWpaIe(dev, wpaie, wpaieLen); */
	}

	return 0;
}