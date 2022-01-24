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
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int /*<<< orphan*/  pointer; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

int FUNC2(struct net_device *dev, struct iw_request_info *info,
			void *w, char *extra)
{
	/* struct usbdrv_private *macp = dev->ml_priv; */
	struct iw_point *wri = (struct iw_point *)extra;
	char mode[8];

	FUNC1(mode, "11g");
	return FUNC0(wri->pointer, mode, 6) ? -EFAULT : 0;
}