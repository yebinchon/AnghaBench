
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int write_urb_busy; int bulk_out_size; TYPE_1__* write_urb; struct usb_serial* serial; int lock; } ;
struct usb_serial {int dev; } ;
struct tty_struct {int dummy; } ;
struct keyspan_pda_private {int tx_throttled; int tx_room; int unthrottle_work; } ;
struct TYPE_2__ {int transfer_buffer_length; int dev; int transfer_buffer; } ;


 int EIO ;
 int GFP_ATOMIC ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int dbg (char*,...) ;
 int in_interrupt () ;
 int memcpy (int ,unsigned char const*,int) ;
 int schedule_work (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,unsigned char*,int,int) ;
 struct keyspan_pda_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int keyspan_pda_write(struct tty_struct *tty,
 struct usb_serial_port *port, const unsigned char *buf, int count)
{
 struct usb_serial *serial = port->serial;
 int request_unthrottle = 0;
 int rc = 0;
 struct keyspan_pda_private *priv;

 priv = usb_get_serial_port_data(port);
 dbg("keyspan_pda_write(%d)", count);
 if (count == 0) {
  dbg(" write request of 0 bytes");
  return 0;
 }





 spin_lock_bh(&port->lock);
 if (port->write_urb_busy || priv->tx_throttled) {
  spin_unlock_bh(&port->lock);
  return 0;
 }
 port->write_urb_busy = 1;
 spin_unlock_bh(&port->lock);






 count = (count > port->bulk_out_size) ? port->bulk_out_size : count;




 if (count > priv->tx_room && !in_interrupt()) {
  unsigned char room;
  rc = usb_control_msg(serial->dev,
         usb_rcvctrlpipe(serial->dev, 0),
         6,
         USB_TYPE_VENDOR | USB_RECIP_INTERFACE
         | USB_DIR_IN,
         0,
         0,
         &room,
         1,
         2000);
  if (rc < 0) {
   dbg(" roomquery failed");
   goto exit;
  }
  if (rc == 0) {
   dbg(" roomquery returned 0 bytes");
   rc = -EIO;
   goto exit;
  }
  dbg(" roomquery says %d", room);
  priv->tx_room = room;
 }
 if (count > priv->tx_room) {


  count = priv->tx_room;
  request_unthrottle = 1;
 }

 if (count) {

  memcpy(port->write_urb->transfer_buffer, buf, count);

  port->write_urb->transfer_buffer_length = count;

  priv->tx_room -= count;

  port->write_urb->dev = port->serial->dev;
  rc = usb_submit_urb(port->write_urb, GFP_ATOMIC);
  if (rc) {
   dbg(" usb_submit_urb(write bulk) failed");
   goto exit;
  }
 } else {


  request_unthrottle = 1;
 }

 if (request_unthrottle) {
  priv->tx_throttled = 1;
  schedule_work(&priv->unthrottle_work);
 }

 rc = count;
exit:
 if (rc < 0)
  port->write_urb_busy = 0;
 return rc;
}
