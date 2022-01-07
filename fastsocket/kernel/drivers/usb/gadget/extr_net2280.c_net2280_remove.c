
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; int irq; } ;
struct TYPE_4__ {int dev; } ;
struct net2280 {TYPE_2__ gadget; scalar_t__ enabled; scalar_t__ region; scalar_t__ regs; scalar_t__ got_irq; scalar_t__ requests; TYPE_1__* ep; int driver; } ;
struct TYPE_3__ {int td_dma; int dummy; } ;


 int BUG_ON (int ) ;
 int INFO (struct net2280*,char*) ;
 int dev_attr_registers ;
 int device_remove_file (int *,int *) ;
 int device_unregister (int *) ;
 int free_irq (int ,struct net2280*) ;
 int iounmap (scalar_t__) ;
 int net2280_led_shutdown (struct net2280*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net2280* pci_get_drvdata (struct pci_dev*) ;
 int pci_pool_destroy (scalar_t__) ;
 int pci_pool_free (scalar_t__,int ,int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int release_mem_region (int ,int ) ;
 int * the_controller ;

__attribute__((used)) static void net2280_remove (struct pci_dev *pdev)
{
 struct net2280 *dev = pci_get_drvdata (pdev);

 BUG_ON(dev->driver);


 net2280_led_shutdown (dev);
 if (dev->requests) {
  int i;
  for (i = 1; i < 5; i++) {
   if (!dev->ep [i].dummy)
    continue;
   pci_pool_free (dev->requests, dev->ep [i].dummy,
     dev->ep [i].td_dma);
  }
  pci_pool_destroy (dev->requests);
 }
 if (dev->got_irq)
  free_irq (pdev->irq, dev);
 if (dev->regs)
  iounmap (dev->regs);
 if (dev->region)
  release_mem_region (pci_resource_start (pdev, 0),
    pci_resource_len (pdev, 0));
 if (dev->enabled)
  pci_disable_device (pdev);
 device_unregister (&dev->gadget.dev);
 device_remove_file (&pdev->dev, &dev_attr_registers);
 pci_set_drvdata (pdev, ((void*)0));

 INFO (dev, "unbind\n");

 the_controller = ((void*)0);
}
