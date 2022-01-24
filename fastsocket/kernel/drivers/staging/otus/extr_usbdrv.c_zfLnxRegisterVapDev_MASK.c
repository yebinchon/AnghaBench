#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32_t ;
typedef  size_t u16_t ;
struct net_device {scalar_t__* dev_addr; int /*<<< orphan*/  ml_priv; int /*<<< orphan*/  mem_end; int /*<<< orphan*/  mem_start; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  irq; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; scalar_t__* dev_addr; scalar_t__ tx_queue_len; int /*<<< orphan*/  destructor; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  ml_priv; int /*<<< orphan*/  mem_end; int /*<<< orphan*/  mem_start; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  irq; } ;
struct TYPE_6__ {TYPE_2__* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  free_netdev ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,size_t) ; 
 TYPE_1__* vap ; 
 int /*<<< orphan*/  vap_netdev_ops ; 

int FUNC7(struct net_device* parentDev, u16_t vapId)
{
    /* Allocate net device structure */
    vap[vapId].dev = FUNC0(0);
    FUNC4("Register vap dev=%x\n", (u32_t)vap[vapId].dev);

    if(vap[vapId].dev == NULL) {
        FUNC4("alloc_etherdev fail\n");
        return -ENOMEM;
    }

    /* Setup the default settings */
    FUNC1(vap[vapId].dev);

    /* MAC address */
    FUNC2(vap[vapId].dev->dev_addr, parentDev->dev_addr, ETH_ALEN);

    vap[vapId].dev->irq = parentDev->irq;
    vap[vapId].dev->base_addr = parentDev->base_addr;
    vap[vapId].dev->mem_start = parentDev->mem_start;
    vap[vapId].dev->mem_end = parentDev->mem_end;
    vap[vapId].dev->ml_priv = parentDev->ml_priv;

    //dev->hard_start_xmit = &zd1212_wds_xmit_frame;
    vap[vapId].dev->netdev_ops = &vap_netdev_ops;
    vap[vapId].dev->destructor = free_netdev;

    vap[vapId].dev->tx_queue_len = 0;

    vap[vapId].dev->dev_addr[0] = parentDev->dev_addr[0];
    vap[vapId].dev->dev_addr[1] = parentDev->dev_addr[1];
    vap[vapId].dev->dev_addr[2] = parentDev->dev_addr[2];
    vap[vapId].dev->dev_addr[3] = parentDev->dev_addr[3];
    vap[vapId].dev->dev_addr[4] = parentDev->dev_addr[4];
    vap[vapId].dev->dev_addr[5] = parentDev->dev_addr[5] + (vapId+1);

    /* Stop the network queue first */
    FUNC3(vap[vapId].dev);

    FUNC6(vap[vapId].dev->name, "vap%d", vapId);
    FUNC4("Register VAP dev success : %s\n", vap[vapId].dev->name);

    if(FUNC5(vap[vapId].dev) != 0) {
        FUNC4("register VAP device fail\n");
        vap[vapId].dev = NULL;
        return -EINVAL;
    }

    return 0;
}