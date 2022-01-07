
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ irq; } ;
struct TYPE_2__ {scalar_t__ pdev; scalar_t__ got_regions; scalar_t__ base_addr; int ANABuf; int RPSBuf; scalar_t__ ai_cmd_running; } ;


 int ACON1_BASE ;
 int CloseDMAB (struct comedi_device*,int *,int ) ;
 int DEBUG (char*) ;
 int DMABUF_SIZE ;
 int IRQ_GPIO3 ;
 int IRQ_RPS1 ;
 int MC1_SHUTDOWN ;
 int P_ACON1 ;
 int P_IER ;
 int P_ISR ;
 int P_MC1 ;
 int WR7146 (int ,int) ;
 int WriteMISC2 (struct comedi_device*,int ) ;
 int comedi_pci_disable (scalar_t__) ;
 TYPE_1__* devpriv ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int iounmap (scalar_t__) ;
 int pci_dev_put (scalar_t__) ;

__attribute__((used)) static int s626_detach(struct comedi_device *dev)
{
 if (devpriv) {

  devpriv->ai_cmd_running = 0;

  if (devpriv->base_addr) {

   WR7146(P_IER, 0);
   WR7146(P_ISR, IRQ_GPIO3 | IRQ_RPS1);


   WriteMISC2(dev, 0);


   WR7146(P_MC1, MC1_SHUTDOWN);
   WR7146(P_ACON1, ACON1_BASE);

   CloseDMAB(dev, &devpriv->RPSBuf, DMABUF_SIZE);
   CloseDMAB(dev, &devpriv->ANABuf, DMABUF_SIZE);
  }

  if (dev->irq)
   free_irq(dev->irq, dev);

  if (devpriv->base_addr)
   iounmap(devpriv->base_addr);

  if (devpriv->pdev) {
   if (devpriv->got_regions)
    comedi_pci_disable(devpriv->pdev);
   pci_dev_put(devpriv->pdev);
  }
 }

 DEBUG("s626_detach: S626 detached!\n");

 return 0;
}
