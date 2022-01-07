
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int GCR ;
 int GCR_ACLINK_OFF ;
 int IRQ_AC97 ;
 int * ac97_clk ;
 int * ac97conf_clk ;
 int clk_disable (int *) ;
 int clk_put (int *) ;
 int free_irq (int ,int *) ;

void pxa2xx_ac97_hw_remove(struct platform_device *dev)
{
 GCR |= GCR_ACLINK_OFF;
 free_irq(IRQ_AC97, ((void*)0));
 if (ac97conf_clk) {
  clk_put(ac97conf_clk);
  ac97conf_clk = ((void*)0);
 }
 clk_disable(ac97_clk);
 clk_put(ac97_clk);
 ac97_clk = ((void*)0);
}
