
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct wusbhc {scalar_t__ ports_max; int mutex; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int status; } ;


 int EINVAL ;
 int ENOSYS ;
 int EPIPE ;
 int USB_PORT_STAT_POWER ;
 int dev_err (struct device*,char*,scalar_t__,int,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* wusb_port_by_idx (struct wusbhc*,scalar_t__) ;
 int wusbhc_rh_port_reset (struct wusbhc*,scalar_t__) ;

__attribute__((used)) static int wusbhc_rh_set_port_feat(struct wusbhc *wusbhc, u16 feature,
       u8 selector, u8 port_idx)
{
 struct device *dev = wusbhc->dev;

 if (port_idx > wusbhc->ports_max)
  return -EINVAL;

 switch (feature) {


 case 134:
 case 135:
 case 132:
 case 136:
 case 133:
  return 0;
 case 130:

  mutex_lock(&wusbhc->mutex);
  wusb_port_by_idx(wusbhc, port_idx)->status |= USB_PORT_STAT_POWER;
  mutex_unlock(&wusbhc->mutex);
  return 0;
 case 129:
  return wusbhc_rh_port_reset(wusbhc, port_idx);
 case 131:
 case 128:
  dev_err(dev, "(port_idx %d) set feat %d/%d UNIMPLEMENTED\n",
   port_idx, feature, selector);
  return -ENOSYS;
 default:
  dev_err(dev, "(port_idx %d) set feat %d/%d UNKNOWN\n",
   port_idx, feature, selector);
  return -EPIPE;
 }

 return 0;
}
