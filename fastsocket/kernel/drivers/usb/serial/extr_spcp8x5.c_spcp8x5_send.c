
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial_port {int work; int dev; TYPE_2__* write_urb; TYPE_1__* serial; int bulk_out_size; } ;
struct spcp8x5_private {int write_urb_in_use; int lock; int buf; } ;
struct TYPE_4__ {int transfer_buffer_length; int dev; int transfer_buffer; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_ATOMIC ;
 int dev_dbg (int *,char*,...) ;
 int get_ringbuf (int ,int ,int ) ;
 int memset (int ,int,int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct spcp8x5_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static void spcp8x5_send(struct usb_serial_port *port)
{
 int count, result;
 struct spcp8x5_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);

 if (priv->write_urb_in_use) {
  dev_dbg(&port->dev, "write urb still used\n");
  spin_unlock_irqrestore(&priv->lock, flags);
  return;
 }


 memset(port->write_urb->transfer_buffer , 0x00 , port->bulk_out_size);
 count = get_ringbuf(priv->buf, port->write_urb->transfer_buffer,
  port->bulk_out_size);

 if (count == 0) {
  spin_unlock_irqrestore(&priv->lock, flags);
  return;
 }


 priv->write_urb_in_use = 1;

 spin_unlock_irqrestore(&priv->lock, flags);

 port->write_urb->transfer_buffer_length = count;
 port->write_urb->dev = port->serial->dev;

 result = usb_submit_urb(port->write_urb, GFP_ATOMIC);
 if (result) {
  dev_dbg(&port->dev, "failed submitting write urb, error %d\n",
   result);
  priv->write_urb_in_use = 0;

 }


 schedule_work(&port->work);
}
