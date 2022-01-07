
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_device {int devpath; TYPE_1__* bus; } ;
struct net_device {int name; } ;
struct TYPE_7__ {struct net_device* net_dev; } ;
struct TYPE_6__ {int bus_name; } ;
typedef TYPE_2__* PRTMP_ADAPTER ;


 int DBGPRINT (int ,char*) ;
 int RTMPFreeAdapter (TYPE_2__*) ;
 int RTMP_SET_FLAG (TYPE_2__*,int ) ;
 int RT_DEBUG_ERROR ;
 int fRTMP_ADAPTER_NIC_NOT_EXIST ;
 int flush_scheduled_work () ;
 int free_netdev (struct net_device*) ;
 int printk (char*,...) ;
 int udelay (int) ;
 int unregister_netdev (struct net_device*) ;
 int usb_put_dev (struct usb_device*) ;

__attribute__((used)) static void _rtusb_disconnect(struct usb_device *dev, PRTMP_ADAPTER pAd)
{
 struct net_device *net_dev = ((void*)0);


 DBGPRINT(RT_DEBUG_ERROR, ("rtusb_disconnect: unregister usbnet usb-%s-%s\n",
    dev->bus->bus_name, dev->devpath));
 if (!pAd)
 {
  usb_put_dev(dev);

  printk("rtusb_disconnect: pAd == NULL!\n");
  return;
 }
 RTMP_SET_FLAG(pAd, fRTMP_ADAPTER_NIC_NOT_EXIST);




 udelay(1);




 net_dev = pAd->net_dev;
 if (pAd->net_dev != ((void*)0))
 {
  printk("rtusb_disconnect: unregister_netdev(), dev->name=%s!\n", net_dev->name);
  unregister_netdev (pAd->net_dev);
 }
 udelay(1);
 flush_scheduled_work();
 udelay(1);


 free_netdev(net_dev);


 RTMPFreeAdapter(pAd);


 usb_put_dev(dev);
 udelay(1);

 DBGPRINT(RT_DEBUG_ERROR, (" RTUSB disconnect successfully\n"));
}
