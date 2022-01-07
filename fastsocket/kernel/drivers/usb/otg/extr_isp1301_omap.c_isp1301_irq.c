
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int WORK_UPDATE_OTG ;
 int isp1301_defer_work (void*,int ) ;

__attribute__((used)) static irqreturn_t isp1301_irq(int irq, void *isp)
{
 isp1301_defer_work(isp, WORK_UPDATE_OTG);
 return IRQ_HANDLED;
}
