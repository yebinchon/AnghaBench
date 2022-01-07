
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct ch341_private {char line_status; int lock; scalar_t__ multi_status_change; } ;


 char CH341_BITS_MODEM_STAT ;
 int ENOMEM ;
 int EPROTO ;
 int GFP_KERNEL ;
 int ch341_control_in (struct usb_device*,int,int,int ,char*,unsigned int const) ;
 int dbg (char*) ;
 int kfree (char*) ;
 char* kmalloc (unsigned int const,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ch341_get_status(struct usb_device *dev, struct ch341_private *priv)
{
 char *buffer;
 int r;
 const unsigned size = 8;
 unsigned long flags;

 dbg("ch341_get_status()");

 buffer = kmalloc(size, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 r = ch341_control_in(dev, 0x95, 0x0706, 0, buffer, size);
 if (r < 0)
  goto out;


 if (r == 2) {
  r = 0;
  spin_lock_irqsave(&priv->lock, flags);
  priv->line_status = (~(*buffer)) & CH341_BITS_MODEM_STAT;
  priv->multi_status_change = 0;
  spin_unlock_irqrestore(&priv->lock, flags);
 } else
  r = -EPROTO;

out: kfree(buffer);
 return r;
}
