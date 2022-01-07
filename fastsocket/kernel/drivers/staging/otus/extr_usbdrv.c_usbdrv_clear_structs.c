
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdrv_private {int pdev; int regp; struct usbdrv_private* ml_priv; } ;
struct net_device {int pdev; int regp; struct net_device* ml_priv; } ;


 int iounmap (int ) ;
 int kfree (struct usbdrv_private*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int pci_set_drvdata (int ,int *) ;

void usbdrv_clear_structs(struct net_device *dev)
{
    struct usbdrv_private *macp = dev->ml_priv;



    iounmap(macp->regp);

    pci_release_regions(macp->pdev);
    pci_disable_device(macp->pdev);
    pci_set_drvdata(macp->pdev, ((void*)0));


    kfree(macp);

    kfree(dev);

}
