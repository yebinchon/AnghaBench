
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdrv_private {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {struct usbdrv_private* ml_priv; } ;


 scalar_t__ pci_get_drvdata (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;
 int usbdrv_clear_structs (struct net_device*) ;

void usbdrv_remove1(struct pci_dev *pcid)
{
    struct net_device *dev;
    struct usbdrv_private *macp;

    if (!(dev = (struct net_device *) pci_get_drvdata(pcid)))
        return;

    macp = dev->ml_priv;
    unregister_netdev(dev);

    usbdrv_clear_structs(dev);
}
