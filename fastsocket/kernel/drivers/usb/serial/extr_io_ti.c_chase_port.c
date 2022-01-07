
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wait_queue_t ;
struct tty_struct {int write_wait; } ;
struct edgeport_port {int baud_rate; TYPE_2__* port; int ep_lock; int ep_out_buf; } ;
struct TYPE_4__ {TYPE_1__* serial; int port; } ;
struct TYPE_3__ {int interface; } ;


 int DIV_ROUND_UP (int,int) ;
 int EDGE_CLOSING_WAIT ;
 int HZ ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int edge_buf_clear (int ) ;
 scalar_t__ edge_buf_data_avail (int ) ;
 int init_waitqueue_entry (int *,int ) ;
 unsigned long jiffies ;
 int max (int,int ) ;
 int msleep (int) ;
 int remove_wait_queue (int *,int *) ;
 unsigned long schedule_timeout (unsigned long) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;
 int tx_active (struct edgeport_port*) ;
 scalar_t__ usb_get_intfdata (int ) ;

__attribute__((used)) static void chase_port(struct edgeport_port *port, unsigned long timeout,
        int flush)
{
 int baud_rate;
 struct tty_struct *tty = tty_port_tty_get(&port->port->port);
 wait_queue_t wait;
 unsigned long flags;

 if (!tty)
  return;

 if (!timeout)
  timeout = (HZ * EDGE_CLOSING_WAIT)/100;


 spin_lock_irqsave(&port->ep_lock, flags);
 init_waitqueue_entry(&wait, current);
 add_wait_queue(&tty->write_wait, &wait);
 for (;;) {
  set_current_state(TASK_INTERRUPTIBLE);
  if (edge_buf_data_avail(port->ep_out_buf) == 0
  || timeout == 0 || signal_pending(current)
  || !usb_get_intfdata(port->port->serial->interface))

   break;
  spin_unlock_irqrestore(&port->ep_lock, flags);
  timeout = schedule_timeout(timeout);
  spin_lock_irqsave(&port->ep_lock, flags);
 }
 set_current_state(TASK_RUNNING);
 remove_wait_queue(&tty->write_wait, &wait);
 if (flush)
  edge_buf_clear(port->ep_out_buf);
 spin_unlock_irqrestore(&port->ep_lock, flags);
 tty_kref_put(tty);


 timeout += jiffies;
 while ((long)(jiffies - timeout) < 0 && !signal_pending(current)
 && usb_get_intfdata(port->port->serial->interface)) {

  if (!tx_active(port))
   break;
  msleep(10);
 }


 if (!usb_get_intfdata(port->port->serial->interface))
  return;



 baud_rate = port->baud_rate;
 if (baud_rate == 0)
  baud_rate = 50;
 msleep(max(1, DIV_ROUND_UP(10000, baud_rate)));
}
