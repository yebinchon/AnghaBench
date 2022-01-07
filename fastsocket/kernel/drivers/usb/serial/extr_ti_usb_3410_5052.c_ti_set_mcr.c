
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_port {unsigned int tp_shadow_mcr; int tp_lock; scalar_t__ tp_uart_base_addr; int tp_tdev; } ;


 int TI_MCR_DTR ;
 int TI_MCR_LOOP ;
 int TI_MCR_RTS ;
 scalar_t__ TI_UART_OFFSET_MCR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ti_write_byte (int ,scalar_t__,int,unsigned int) ;

__attribute__((used)) static int ti_set_mcr(struct ti_port *tport, unsigned int mcr)
{
 unsigned long flags;
 int status;

 status = ti_write_byte(tport->tp_tdev,
  tport->tp_uart_base_addr + TI_UART_OFFSET_MCR,
  TI_MCR_RTS | TI_MCR_DTR | TI_MCR_LOOP, mcr);

 spin_lock_irqsave(&tport->tp_lock, flags);
 if (!status)
  tport->tp_shadow_mcr = mcr;
 spin_unlock_irqrestore(&tport->tp_lock, flags);

 return status;
}
