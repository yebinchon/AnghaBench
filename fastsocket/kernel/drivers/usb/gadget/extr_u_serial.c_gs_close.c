
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gs_port* driver_data; } ;
struct gserial {int (* disconnect ) (struct gserial*) ;} ;
struct gs_port {int open_count; int openclose; int port_lock; int close_wait; int port_num; int * port_tty; int port_write_buf; struct gserial* port_usb; int drain_wait; } ;
struct file {int dummy; } ;


 int GS_CLOSE_TIMEOUT ;
 int HZ ;
 int WARN_ON (int) ;
 int gs_buf_clear (int *) ;
 scalar_t__ gs_buf_data_avail (int *) ;
 int gs_buf_free (int *) ;
 int gs_writes_finished (struct gs_port*) ;
 int pr_debug (char*,int ,struct tty_struct*,struct file*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct gserial*) ;
 int wait_event_interruptible_timeout (int ,int ,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void gs_close(struct tty_struct *tty, struct file *file)
{
 struct gs_port *port = tty->driver_data;
 struct gserial *gser;

 spin_lock_irq(&port->port_lock);

 if (port->open_count != 1) {
  if (port->open_count == 0)
   WARN_ON(1);
  else
   --port->open_count;
  goto exit;
 }

 pr_debug("gs_close: ttyGS%d (%p,%p) ...\n", port->port_num, tty, file);




 port->openclose = 1;
 port->open_count = 0;

 gser = port->port_usb;
 if (gser && gser->disconnect)
  gser->disconnect(gser);




 if (gs_buf_data_avail(&port->port_write_buf) > 0 && gser) {
  spin_unlock_irq(&port->port_lock);
  wait_event_interruptible_timeout(port->drain_wait,
     gs_writes_finished(port),
     GS_CLOSE_TIMEOUT * HZ);
  spin_lock_irq(&port->port_lock);
  gser = port->port_usb;
 }





 if (gser == ((void*)0))
  gs_buf_free(&port->port_write_buf);
 else
  gs_buf_clear(&port->port_write_buf);

 tty->driver_data = ((void*)0);
 port->port_tty = ((void*)0);

 port->openclose = 0;

 pr_debug("gs_close: ttyGS%d (%p,%p) done!\n",
   port->port_num, tty, file);

 wake_up_interruptible(&port->close_wait);
exit:
 spin_unlock_irq(&port->port_lock);
}
