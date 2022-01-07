
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct snd_uart16550 {int timer_running; TYPE_1__ buffer_timer; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static inline void snd_uart16550_add_timer(struct snd_uart16550 *uart)
{
 if (!uart->timer_running) {

  uart->buffer_timer.expires = jiffies + (HZ+255)/256;
  uart->timer_running = 1;
  add_timer(&uart->buffer_timer);
 }
}
