
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
typedef int pm_message_t ;
struct TYPE_2__ {int (* ndo_stop ) (struct net_device*) ;} ;


 int netif_device_detach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int pci_choose_state (struct pci_dev*,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static int rtl8180_suspend(struct pci_dev *pdev, pm_message_t state)
{
 struct net_device *dev = pci_get_drvdata(pdev);

 if (!netif_running(dev))
  goto out_pci_suspend;

 if (dev->netdev_ops->ndo_stop)
  dev->netdev_ops->ndo_stop(dev);

 netif_device_detach(dev);

out_pci_suspend:
 pci_save_state(pdev);
 pci_disable_device(pdev);
 pci_set_power_state(pdev, pci_choose_state(pdev, state));
 return 0;
}
