
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ input_byte; int lock; } ;
typedef TYPE_1__ uart401_devc ;


 scalar_t__ MPU_ACK ;
 int UART_MODE_ON ;
 scalar_t__ input_avail (TYPE_1__*) ;
 int output_ready (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uart401_cmd (TYPE_1__*,int ) ;
 scalar_t__ uart401_read (TYPE_1__*) ;

__attribute__((used)) static void enter_uart_mode(uart401_devc * devc)
{
 int ok, timeout;
 unsigned long flags;

 spin_lock_irqsave(&devc->lock,flags);
 for (timeout = 30000; timeout > 0 && !output_ready(devc); timeout--);

 devc->input_byte = 0;
 uart401_cmd(devc, UART_MODE_ON);

 ok = 0;
 for (timeout = 50000; timeout > 0 && !ok; timeout--)
  if (devc->input_byte == MPU_ACK)
   ok = 1;
  else if (input_avail(devc))
   if (uart401_read(devc) == MPU_ACK)
    ok = 1;

 spin_unlock_irqrestore(&devc->lock,flags);
}
