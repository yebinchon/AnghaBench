
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gs_port* driver_data; } ;
struct gserial {int (* send_break ) (struct gserial*,int) ;} ;
struct gs_port {int port_lock; struct gserial* port_usb; int port_num; } ;


 int pr_vdebug (char*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct gserial*,int) ;

__attribute__((used)) static int gs_break_ctl(struct tty_struct *tty, int duration)
{
 struct gs_port *port = tty->driver_data;
 int status = 0;
 struct gserial *gser;

 pr_vdebug("gs_break_ctl: ttyGS%d, send break (%d) \n",
   port->port_num, duration);

 spin_lock_irq(&port->port_lock);
 gser = port->port_usb;
 if (gser && gser->send_break)
  status = gser->send_break(gser, duration);
 spin_unlock_irq(&port->port_lock);

 return status;
}
