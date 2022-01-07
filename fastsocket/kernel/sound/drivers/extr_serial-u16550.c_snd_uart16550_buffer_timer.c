
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_uart16550 {int open_lock; } ;


 int snd_uart16550_del_timer (struct snd_uart16550*) ;
 int snd_uart16550_io_loop (struct snd_uart16550*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_uart16550_buffer_timer(unsigned long data)
{
 unsigned long flags;
 struct snd_uart16550 *uart;

 uart = (struct snd_uart16550 *)data;
 spin_lock_irqsave(&uart->open_lock, flags);
 snd_uart16550_del_timer(uart);
 snd_uart16550_io_loop(uart);
 spin_unlock_irqrestore(&uart->open_lock, flags);
}
