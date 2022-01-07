
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ count; } ;
struct usb_serial_port {int dev; TYPE_1__* serial; TYPE_2__ port; } ;
struct urb {unsigned char* transfer_buffer; int status; int actual_length; int dev; struct usb_serial_port* context; } ;
struct tty_struct {int dummy; } ;
struct spcp8x5_private {int line_status; int delta_msr_wait; int lock; } ;
struct TYPE_3__ {int dev; } ;


 int EPROTO ;
 int GFP_ATOMIC ;
 char TTY_BREAK ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_OVERRUN ;
 char TTY_PARITY ;
 int UART_BREAK_ERROR ;
 int UART_FRAME_ERROR ;
 int UART_OVERRUN_ERROR ;
 int UART_PARITY_ERROR ;
 int UART_STATE_TRANSIENT_MASK ;
 int dev_dbg (int *,char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_buffer_request_room (struct tty_struct*,int) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,unsigned char,char) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (TYPE_2__*) ;
 struct spcp8x5_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_submit_urb (struct urb*,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void spcp8x5_read_bulk_callback(struct urb *urb)
{
 struct usb_serial_port *port = urb->context;
 struct spcp8x5_private *priv = usb_get_serial_port_data(port);
 struct tty_struct *tty;
 unsigned char *data = urb->transfer_buffer;
 unsigned long flags;
 int i;
 int result = urb->status;
 u8 status;
 char tty_flag;

 dev_dbg(&port->dev, "start, result = %d, urb->actual_length = %d\n,",
  result, urb->actual_length);


 if (result) {
  if (!port->port.count)
   return;
  if (result == -EPROTO) {


   urb->dev = port->serial->dev;
   result = usb_submit_urb(urb , GFP_ATOMIC);
   if (result)
    dev_dbg(&port->dev,
     "failed submitting read urb %d\n",
     result);
   return;
  }
  dev_dbg(&port->dev, "unable to handle the error, exiting.\n");
  return;
 }


 tty_flag = TTY_NORMAL;

 spin_lock_irqsave(&priv->lock, flags);
 status = priv->line_status;
 priv->line_status &= ~UART_STATE_TRANSIENT_MASK;
 spin_unlock_irqrestore(&priv->lock, flags);

 wake_up_interruptible(&priv->delta_msr_wait);



 if (status & UART_BREAK_ERROR)
  tty_flag = TTY_BREAK;
 else if (status & UART_PARITY_ERROR)
  tty_flag = TTY_PARITY;
 else if (status & UART_FRAME_ERROR)
  tty_flag = TTY_FRAME;
 dev_dbg(&port->dev, "tty_flag = %d\n", tty_flag);

 tty = tty_port_tty_get(&port->port);
 if (tty && urb->actual_length) {
  tty_buffer_request_room(tty, urb->actual_length + 1);

  if (status & UART_OVERRUN_ERROR)
   tty_insert_flip_char(tty, 0, TTY_OVERRUN);
  for (i = 0; i < urb->actual_length; ++i)
   tty_insert_flip_char(tty, data[i], tty_flag);
  tty_flip_buffer_push(tty);
 }
 tty_kref_put(tty);


 if (port->port.count) {
  urb->dev = port->serial->dev;
  result = usb_submit_urb(urb , GFP_ATOMIC);
  if (result)
   dev_dbg(&port->dev, "failed submitting read urb %d\n",
    result);
 }

 return;
}
