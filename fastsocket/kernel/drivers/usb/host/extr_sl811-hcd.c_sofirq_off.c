
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sl811 {int irq_enable; } ;


 int SL11H_INTMASK_SOFINTR ;
 int VDBG (char*) ;

__attribute__((used)) static inline void sofirq_off(struct sl811 *sl811)
{
 if (!(sl811->irq_enable & SL11H_INTMASK_SOFINTR))
  return;
 VDBG("sof irq off\n");
 sl811->irq_enable &= ~SL11H_INTMASK_SOFINTR;
}
