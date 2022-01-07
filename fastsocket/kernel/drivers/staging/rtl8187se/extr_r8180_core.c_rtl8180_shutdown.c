
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct TYPE_2__ {int (* ndo_stop ) (struct net_device*) ;} ;


 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static void rtl8180_shutdown (struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 if (dev->netdev_ops->ndo_stop)
  dev->netdev_ops->ndo_stop(dev);
 pci_disable_device(pdev);
}
