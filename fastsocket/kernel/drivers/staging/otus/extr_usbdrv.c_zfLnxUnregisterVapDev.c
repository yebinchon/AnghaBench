
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32_t ;
typedef size_t u16_t ;
struct net_device {int dummy; } ;
struct TYPE_4__ {size_t name; } ;
struct TYPE_3__ {TYPE_2__* dev; } ;


 int EINVAL ;
 int printk (char*,...) ;
 int unregister_netdev (TYPE_2__*) ;
 TYPE_1__* vap ;

int zfLnxUnregisterVapDev(struct net_device* parentDev, u16_t vapId)
{
    int ret = 0;

    printk("Unregister VAP dev : %s\n", vap[vapId].dev->name);

    if(vap[vapId].dev != ((void*)0)) {
        printk("Unregister vap dev=%x\n", (u32_t)vap[vapId].dev);


        unregister_netdev(vap[vapId].dev);

        printk("VAP unregister_netdevice\n");
        vap[vapId].dev = ((void*)0);
    }
    else {
        printk("unregister VAP device: %d fail\n", vapId);
        ret = -EINVAL;
    }

    return ret;
}
