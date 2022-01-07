
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* serial; } ;
struct tty_struct {int dummy; } ;
struct ftdi_private {int interface; } ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int FTDI_SIO_SET_BAUDRATE_REQUEST ;
 int FTDI_SIO_SET_BAUDRATE_REQUEST_TYPE ;
 int GFP_NOIO ;
 int WDR_SHORT_TIMEOUT ;
 int get_ftdi_divisor (struct tty_struct*,struct usb_serial_port*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int usb_control_msg (int ,int ,int ,int ,int,int,char*,int ,int ) ;
 struct ftdi_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int change_speed(struct tty_struct *tty, struct usb_serial_port *port)
{
 struct ftdi_private *priv = usb_get_serial_port_data(port);
 char *buf;
 __u16 urb_value;
 __u16 urb_index;
 __u32 urb_index_value;
 int rv;

 buf = kmalloc(1, GFP_NOIO);
 if (!buf)
  return -ENOMEM;

 urb_index_value = get_ftdi_divisor(tty, port);
 urb_value = (__u16)urb_index_value;
 urb_index = (__u16)(urb_index_value >> 16);
 if (priv->interface) {
  urb_index = (__u16)((urb_index << 8) | priv->interface);
 }

 rv = usb_control_msg(port->serial->dev,
       usb_sndctrlpipe(port->serial->dev, 0),
       FTDI_SIO_SET_BAUDRATE_REQUEST,
       FTDI_SIO_SET_BAUDRATE_REQUEST_TYPE,
       urb_value, urb_index,
       buf, 0, WDR_SHORT_TIMEOUT);

 kfree(buf);
 return rv;
}
