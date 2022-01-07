
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_uart16550 {unsigned short buff_out; scalar_t__ buff_in_count; int fifo_count; scalar_t__ base; int * tx_buff; } ;


 unsigned short TX_BUFF_MASK ;
 scalar_t__ UART_TX ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline void snd_uart16550_buffer_output(struct snd_uart16550 *uart)
{
 unsigned short buff_out = uart->buff_out;
 if (uart->buff_in_count > 0) {
  outb(uart->tx_buff[buff_out], uart->base + UART_TX);
  uart->fifo_count++;
  buff_out++;
  buff_out &= TX_BUFF_MASK;
  uart->buff_out = buff_out;
  uart->buff_in_count--;
 }
}
