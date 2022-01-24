#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct usbdrv_private* ml_priv; } ;
typedef  TYPE_1__ zdev_t ;
struct usbdrv_private {int kevent_ready; int /*<<< orphan*/  kevent; int /*<<< orphan*/  kevent_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

void FUNC3(zdev_t *dev, int flag)
{
    struct usbdrv_private *macp = dev->ml_priv;

    if (macp == NULL)
    {
        FUNC0("macp is NULL\n");
        return;
    }

    if (0 && macp->kevent_ready != 1)
    {
        FUNC0("Kevent not ready\n");
        return;
    }

    FUNC2(flag, &macp->kevent_flags);

    if (!FUNC1(&macp->kevent))
    {
        //Fails is Normal
        //printk(KERN_ERR "schedule_task failed, flag = %x\n", flag);
    }
}