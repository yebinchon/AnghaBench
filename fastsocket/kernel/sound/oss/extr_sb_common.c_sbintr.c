
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int irq_ok; int model; } ;
typedef TYPE_1__ sb_devc ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;


 int ess_intr (TYPE_1__*) ;
 int pci_intr (TYPE_1__*) ;
 int sb_intr (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t sbintr(int irq, void *dev_id)
{
 sb_devc *devc = dev_id;

 devc->irq_ok = 1;

 switch (devc->model) {
 case 128:
  pci_intr (devc);
  break;

 case 129:
  ess_intr (devc);
  break;
 default:
  sb_intr (devc);
  break;
 }
 return IRQ_HANDLED;
}
