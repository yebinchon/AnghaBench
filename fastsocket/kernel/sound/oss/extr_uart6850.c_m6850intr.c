
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ input_avail () ;
 int uart6850_input_loop () ;

__attribute__((used)) static irqreturn_t m6850intr(int irq, void *dev_id)
{
 if (input_avail())
  uart6850_input_loop();
 return IRQ_HANDLED;
}
