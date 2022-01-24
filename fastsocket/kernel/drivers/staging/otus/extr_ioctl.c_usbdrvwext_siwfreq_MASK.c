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
typedef  int u32_t ;
struct usbdrv_private {int DeviceOpened; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int e; int m; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct net_device *dev,
		struct iw_request_info *info,
		struct iw_freq *freq, char *extra)
{
	u32_t FreqKHz;
	struct usbdrv_private *macp = dev->ml_priv;

	if (!FUNC0(dev))
		return -EINVAL;

	if (freq->e > 1)
		return -EINVAL;

	if (freq->e == 1) {
		FreqKHz = (freq->m / 100000);

		if (FreqKHz > 4000000) {
			if (FreqKHz > 5825000)
				FreqKHz = 5825000;
			else if (FreqKHz < 4920000)
				FreqKHz = 4920000;
			else if (FreqKHz < 5000000)
				FreqKHz = (((FreqKHz - 4000000) / 5000) * 5000)
						+ 4000000;
			else
				FreqKHz = (((FreqKHz - 5000000) / 5000) * 5000)
						+ 5000000;
		} else {
			if (FreqKHz > 2484000)
				FreqKHz = 2484000;
			else if (FreqKHz < 2412000)
				FreqKHz = 2412000;
			else
				FreqKHz = (((FreqKHz - 2412000) / 5000) * 5000)
						+ 2412000;
		}
	} else {
		FreqKHz = FUNC1(freq->m);

		if (FreqKHz != -1)
			FreqKHz *= 1000;
		else
			FreqKHz = 2412000;
	}

	/* printk("freq->m: %d, freq->e: %d\n", freq->m, freq->e); */
	/* printk("FreqKHz: %d\n", FreqKHz); */

	if (macp->DeviceOpened == 1) {
		FUNC4(dev, FreqKHz, 0); /* Immediate */
		/* u8_t wpaieLen,wpaie[50]; */
		/* zfiWlanQueryWpaIe(dev, wpaie, &wpaieLen); */
		FUNC2(dev, 0);
		FUNC3(dev);
		/* if (wpaieLen > 2) */
		/* zfiWlanSetWpaIe(dev, wpaie, wpaieLen); */
	}

	return 0;
}