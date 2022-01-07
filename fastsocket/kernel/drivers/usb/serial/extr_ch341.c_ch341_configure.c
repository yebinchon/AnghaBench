
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct ch341_private {int line_control; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ch341_control_in (struct usb_device*,int,int,int ,char*,unsigned int const) ;
 int ch341_control_out (struct usb_device*,int,int,int) ;
 int ch341_get_status (struct usb_device*,struct ch341_private*) ;
 int ch341_set_baudrate (struct usb_device*,struct ch341_private*) ;
 int ch341_set_handshake (struct usb_device*,int ) ;
 int dbg (char*) ;
 int kfree (char*) ;
 char* kmalloc (unsigned int const,int ) ;

__attribute__((used)) static int ch341_configure(struct usb_device *dev, struct ch341_private *priv)
{
 char *buffer;
 int r;
 const unsigned size = 8;

 dbg("ch341_configure()");

 buffer = kmalloc(size, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;


 r = ch341_control_in(dev, 0x5f, 0, 0, buffer, size);
 if (r < 0)
  goto out;

 r = ch341_control_out(dev, 0xa1, 0, 0);
 if (r < 0)
  goto out;

 r = ch341_set_baudrate(dev, priv);
 if (r < 0)
  goto out;


 r = ch341_control_in(dev, 0x95, 0x2518, 0, buffer, size);
 if (r < 0)
  goto out;

 r = ch341_control_out(dev, 0x9a, 0x2518, 0x0050);
 if (r < 0)
  goto out;


 r = ch341_get_status(dev, priv);
 if (r < 0)
  goto out;

 r = ch341_control_out(dev, 0xa1, 0x501f, 0xd90a);
 if (r < 0)
  goto out;

 r = ch341_set_baudrate(dev, priv);
 if (r < 0)
  goto out;

 r = ch341_set_handshake(dev, priv->line_control);
 if (r < 0)
  goto out;


 r = ch341_get_status(dev, priv);

out: kfree(buffer);
 return r;
}
