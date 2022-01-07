
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_uart16550 {scalar_t__ filemode; int open_lock; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ SERIAL_MODE_NOT_OPENED ;
 scalar_t__ UART_IIR ;
 int inb (scalar_t__) ;
 int snd_uart16550_io_loop (struct snd_uart16550*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_uart16550_interrupt(int irq, void *dev_id)
{
 struct snd_uart16550 *uart;

 uart = dev_id;
 spin_lock(&uart->open_lock);
 if (uart->filemode == SERIAL_MODE_NOT_OPENED) {
  spin_unlock(&uart->open_lock);
  return IRQ_NONE;
 }

 inb(uart->base + UART_IIR);
 snd_uart16550_io_loop(uart);
 spin_unlock(&uart->open_lock);
 return IRQ_HANDLED;
}
