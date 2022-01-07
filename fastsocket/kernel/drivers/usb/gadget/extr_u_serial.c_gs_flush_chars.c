
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gs_port* driver_data; } ;
struct gs_port {int port_lock; scalar_t__ port_usb; int port_num; } ;


 int gs_start_tx (struct gs_port*) ;
 int pr_vdebug (char*,int ,struct tty_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gs_flush_chars(struct tty_struct *tty)
{
 struct gs_port *port = tty->driver_data;
 unsigned long flags;

 pr_vdebug("gs_flush_chars: (%d,%p)\n", port->port_num, tty);

 spin_lock_irqsave(&port->port_lock, flags);
 if (port->port_usb)
  gs_start_tx(port);
 spin_unlock_irqrestore(&port->port_lock, flags);
}
