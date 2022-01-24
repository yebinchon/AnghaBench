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
struct usbdrv_private {int /*<<< orphan*/  isolate_lock; scalar_t__ driver_isolated; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct net_device *dev, void *addr)
{
    struct usbdrv_private *macp;
    int rc = -1;

    macp = dev->ml_priv;
    FUNC0(&(macp->isolate_lock));

    if (macp->driver_isolated) {
        goto exit;
    }

    rc = 0;


exit:
    FUNC1(&(macp->isolate_lock));
    return rc;
}