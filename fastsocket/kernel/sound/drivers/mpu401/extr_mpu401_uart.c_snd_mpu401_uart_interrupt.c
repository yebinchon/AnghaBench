
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mpu401 {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int _snd_mpu401_uart_interrupt (struct snd_mpu401*) ;

irqreturn_t snd_mpu401_uart_interrupt(int irq, void *dev_id)
{
 struct snd_mpu401 *mpu = dev_id;

 if (mpu == ((void*)0))
  return IRQ_NONE;
 _snd_mpu401_uart_interrupt(mpu);
 return IRQ_HANDLED;
}
