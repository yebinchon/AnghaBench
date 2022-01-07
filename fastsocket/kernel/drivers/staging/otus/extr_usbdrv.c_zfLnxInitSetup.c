
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
struct TYPE_2__ {unsigned long data; void* function; } ;
struct usbdrv_private {TYPE_1__ hbTimer10ms; int cs_lock; } ;
struct net_device {int* dev_addr; int flags; int * netdev_ops; struct iw_handler_def* wireless_handlers; } ;
struct iw_handler_def {int dummy; } ;


 int IFF_MULTICAST ;
 void** addr ;
 int init_timer (TYPE_1__*) ;
 int otus_netdev_ops ;
 int p80211wext_handler_def ;
 int spin_lock_init (int *) ;
 int zfLnx10msTimer ;
 int zfLnxInitVapStruct () ;
 int zfiWlanQueryMacAddress (struct net_device*,void**) ;

u8_t zfLnxInitSetup(struct net_device *dev, struct usbdrv_private *macp)
{







    spin_lock_init(&(macp->cs_lock));
    dev->wireless_handlers = (struct iw_handler_def *)&p80211wext_handler_def;

    dev->netdev_ops = &otus_netdev_ops;

    dev->flags |= IFF_MULTICAST;

    dev->dev_addr[0] = 0x00;
    dev->dev_addr[1] = 0x03;
    dev->dev_addr[2] = 0x7f;
    dev->dev_addr[3] = 0x11;
    dev->dev_addr[4] = 0x22;
    dev->dev_addr[5] = 0x33;


    init_timer(&macp->hbTimer10ms);
    macp->hbTimer10ms.data = (unsigned long)dev;
    macp->hbTimer10ms.function = (void *)&zfLnx10msTimer;



    zfLnxInitVapStruct();

    return 1;
}
