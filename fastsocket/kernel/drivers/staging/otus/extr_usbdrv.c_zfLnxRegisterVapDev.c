
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32_t ;
typedef size_t u16_t ;
struct net_device {scalar_t__* dev_addr; int ml_priv; int mem_end; int mem_start; int base_addr; int irq; } ;
struct TYPE_7__ {int name; scalar_t__* dev_addr; scalar_t__ tx_queue_len; int destructor; int * netdev_ops; int ml_priv; int mem_end; int mem_start; int base_addr; int irq; } ;
struct TYPE_6__ {TYPE_2__* dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int ETH_ALEN ;
 TYPE_2__* alloc_etherdev (int ) ;
 int ether_setup (TYPE_2__*) ;
 int free_netdev ;
 int memcpy (scalar_t__*,scalar_t__*,int ) ;
 int netif_stop_queue (TYPE_2__*) ;
 int printk (char*,...) ;
 scalar_t__ register_netdevice (TYPE_2__*) ;
 int sprintf (int ,char*,size_t) ;
 TYPE_1__* vap ;
 int vap_netdev_ops ;

int zfLnxRegisterVapDev(struct net_device* parentDev, u16_t vapId)
{

    vap[vapId].dev = alloc_etherdev(0);
    printk("Register vap dev=%x\n", (u32_t)vap[vapId].dev);

    if(vap[vapId].dev == ((void*)0)) {
        printk("alloc_etherdev fail\n");
        return -ENOMEM;
    }


    ether_setup(vap[vapId].dev);


    memcpy(vap[vapId].dev->dev_addr, parentDev->dev_addr, ETH_ALEN);

    vap[vapId].dev->irq = parentDev->irq;
    vap[vapId].dev->base_addr = parentDev->base_addr;
    vap[vapId].dev->mem_start = parentDev->mem_start;
    vap[vapId].dev->mem_end = parentDev->mem_end;
    vap[vapId].dev->ml_priv = parentDev->ml_priv;


    vap[vapId].dev->netdev_ops = &vap_netdev_ops;
    vap[vapId].dev->destructor = free_netdev;

    vap[vapId].dev->tx_queue_len = 0;

    vap[vapId].dev->dev_addr[0] = parentDev->dev_addr[0];
    vap[vapId].dev->dev_addr[1] = parentDev->dev_addr[1];
    vap[vapId].dev->dev_addr[2] = parentDev->dev_addr[2];
    vap[vapId].dev->dev_addr[3] = parentDev->dev_addr[3];
    vap[vapId].dev->dev_addr[4] = parentDev->dev_addr[4];
    vap[vapId].dev->dev_addr[5] = parentDev->dev_addr[5] + (vapId+1);


    netif_stop_queue(vap[vapId].dev);

    sprintf(vap[vapId].dev->name, "vap%d", vapId);
    printk("Register VAP dev success : %s\n", vap[vapId].dev->name);

    if(register_netdevice(vap[vapId].dev) != 0) {
        printk("register VAP device fail\n");
        vap[vapId].dev = ((void*)0);
        return -EINVAL;
    }

    return 0;
}
