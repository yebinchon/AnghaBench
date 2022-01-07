
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;


 int IFF_UP ;

void usbdrv_set_multi(struct net_device *dev)
{


    if (!(dev->flags & IFF_UP))
        return;

        return;

}
