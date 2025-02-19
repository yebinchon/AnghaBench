
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dummy; } ;
struct r8192_priv {struct usb_device* udev; } ;
struct net_device {int dummy; } ;


 int HZ ;
 int RTL8187_REQT_READ ;
 int RTL8187_REQ_GET_REGS ;
 scalar_t__ ieee80211_priv (struct net_device*) ;
 int printk (char*,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int,int ,int *,int,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

u16 read_nic_word_E(struct net_device *dev, int indx)
{
 u16 data;
 int status;
 struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 struct usb_device *udev = priv->udev;

 status = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
          RTL8187_REQ_GET_REGS, RTL8187_REQT_READ,
          indx|0xfe00, 0, &data, 2, HZ / 2);

        if (status < 0)
        {
                printk("read_nic_word TimeOut! status:%d\n", status);
        }


 return data;
}
