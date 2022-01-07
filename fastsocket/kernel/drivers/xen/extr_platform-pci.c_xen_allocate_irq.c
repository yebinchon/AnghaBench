
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;


 int IRQF_DISABLED ;
 int IRQF_NOBALANCING ;
 int IRQF_TRIGGER_RISING ;
 int do_hvm_evtchn_intr ;
 int request_irq (int ,int ,int,char*,struct pci_dev*) ;

__attribute__((used)) static int xen_allocate_irq(struct pci_dev *pdev)
{
 return request_irq(pdev->irq, do_hvm_evtchn_intr,
   IRQF_DISABLED | IRQF_NOBALANCING | IRQF_TRIGGER_RISING,
   "xen-platform-pci", pdev);
}
