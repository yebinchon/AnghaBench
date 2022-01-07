
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_info (int ,char*) ;
 int s3c2410wdt_keepalive () ;
 int wdt_dev ;

__attribute__((used)) static irqreturn_t s3c2410wdt_irq(int irqno, void *param)
{
 dev_info(wdt_dev, "watchdog timer expired (irq)\n");

 s3c2410wdt_keepalive();
 return IRQ_HANDLED;
}
