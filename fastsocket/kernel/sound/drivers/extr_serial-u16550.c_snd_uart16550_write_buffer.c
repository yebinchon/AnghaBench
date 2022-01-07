
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_uart16550 {unsigned short buff_in; scalar_t__ buff_in_count; unsigned char* tx_buff; scalar_t__ irq; } ;


 unsigned short TX_BUFF_MASK ;
 scalar_t__ TX_BUFF_SIZE ;
 int snd_uart16550_add_timer (struct snd_uart16550*) ;

__attribute__((used)) static inline int snd_uart16550_write_buffer(struct snd_uart16550 *uart,
          unsigned char byte)
{
 unsigned short buff_in = uart->buff_in;
 if (uart->buff_in_count < TX_BUFF_SIZE) {
  uart->tx_buff[buff_in] = byte;
  buff_in++;
  buff_in &= TX_BUFF_MASK;
  uart->buff_in = buff_in;
  uart->buff_in_count++;
  if (uart->irq < 0)
   snd_uart16550_add_timer(uart);
  return 1;
 } else
  return 0;
}
