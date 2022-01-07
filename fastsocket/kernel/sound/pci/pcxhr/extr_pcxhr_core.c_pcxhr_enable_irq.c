
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcxhr_mgr {int dummy; } ;


 unsigned int PCXHR_INPL (struct pcxhr_mgr*,int ) ;
 unsigned int PCXHR_IRQCS_ENABLE_PCIDB ;
 unsigned int PCXHR_IRQCS_ENABLE_PCIIRQ ;
 int PCXHR_OUTPL (struct pcxhr_mgr*,int ,unsigned int) ;
 int PCXHR_PLX_IRQCS ;

__attribute__((used)) static void pcxhr_enable_irq(struct pcxhr_mgr *mgr, int enable)
{
 unsigned int reg = PCXHR_INPL(mgr, PCXHR_PLX_IRQCS);

 if (enable)
  reg |= (PCXHR_IRQCS_ENABLE_PCIIRQ | PCXHR_IRQCS_ENABLE_PCIDB);
 else
  reg &= ~(PCXHR_IRQCS_ENABLE_PCIIRQ | PCXHR_IRQCS_ENABLE_PCIDB);
 PCXHR_OUTPL(mgr, PCXHR_PLX_IRQCS, reg);
}
