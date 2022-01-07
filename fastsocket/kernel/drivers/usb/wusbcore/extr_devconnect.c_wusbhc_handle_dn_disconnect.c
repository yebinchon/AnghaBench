
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int mutex; struct device* dev; } ;
struct wusb_dev {int port_idx; int addr; } ;
struct device {int dummy; } ;


 int __wusbhc_dev_disconnect (struct wusbhc*,int ) ;
 int dev_info (struct device*,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wusb_port_by_idx (struct wusbhc*,int ) ;

__attribute__((used)) static void wusbhc_handle_dn_disconnect(struct wusbhc *wusbhc, struct wusb_dev *wusb_dev)
{
 struct device *dev = wusbhc->dev;

 dev_info(dev, "DN DISCONNECT: device 0x%02x going down\n", wusb_dev->addr);

 mutex_lock(&wusbhc->mutex);
 __wusbhc_dev_disconnect(wusbhc, wusb_port_by_idx(wusbhc, wusb_dev->port_idx));
 mutex_unlock(&wusbhc->mutex);
}
