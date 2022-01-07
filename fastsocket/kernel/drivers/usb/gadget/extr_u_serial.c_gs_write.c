
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gs_port* driver_data; } ;
struct gs_port {int port_lock; scalar_t__ port_usb; int port_write_buf; int port_num; } ;


 int gs_buf_put (int *,unsigned char const*,int) ;
 int gs_start_tx (struct gs_port*) ;
 int pr_vdebug (char*,int ,struct tty_struct*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int gs_write(struct tty_struct *tty, const unsigned char *buf, int count)
{
 struct gs_port *port = tty->driver_data;
 unsigned long flags;
 int status;

 pr_vdebug("gs_write: ttyGS%d (%p) writing %d bytes\n",
   port->port_num, tty, count);

 spin_lock_irqsave(&port->port_lock, flags);
 if (count)
  count = gs_buf_put(&port->port_write_buf, buf, count);

 if (port->port_usb)
  status = gs_start_tx(port);
 spin_unlock_irqrestore(&port->port_lock, flags);

 return count;
}
