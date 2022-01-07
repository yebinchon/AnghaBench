
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16_t ;
struct net_device {int name; } ;
struct TYPE_2__ {int openFlag; } ;


 int netif_stop_queue (struct net_device*) ;
 int printk (char*,int,...) ;
 TYPE_1__* vap ;
 int zfLnxGetVapId (struct net_device*) ;

int zfLnxVapClose(struct net_device *dev)
{
    u16_t vapId;

    vapId = zfLnxGetVapId(dev);

    if (vapId != 0xffff)
    {
        if (vap[vapId].openFlag == 1)
        {
            printk("zfLnxVapClose: device name=%s, vap ID=%d\n", dev->name, vapId);

            netif_stop_queue(dev);
            vap[vapId].openFlag = 0;
        }
        else
        {
            printk("VAP port was not opened : vap ID=%d\n", vapId);
        }
    }
 return 0;
}
