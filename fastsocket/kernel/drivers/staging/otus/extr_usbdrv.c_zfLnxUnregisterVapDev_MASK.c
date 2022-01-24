#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32_t ;
typedef  size_t u16_t ;
struct net_device {int dummy; } ;
struct TYPE_4__ {size_t name; } ;
struct TYPE_3__ {TYPE_2__* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_1__* vap ; 

int FUNC2(struct net_device* parentDev, u16_t vapId)
{
    int ret = 0;

    FUNC0("Unregister VAP dev : %s\n", vap[vapId].dev->name);

    if(vap[vapId].dev != NULL) {
        FUNC0("Unregister vap dev=%x\n", (u32_t)vap[vapId].dev);
        //
        //unregister_netdevice(wds[wdsId].dev);
        FUNC1(vap[vapId].dev);

        FUNC0("VAP unregister_netdevice\n");
        vap[vapId].dev = NULL;
    }
    else {
        FUNC0("unregister VAP device: %d fail\n", vapId);
        ret = -EINVAL;
    }

    return ret;
}