
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlp {TYPE_2__* rc; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;


 int __wlp_alloc_device_info (struct wlp*) ;
 int __wlp_fill_device_info (struct wlp*) ;
 int dev_err (struct device*,char*) ;

int __wlp_setup_device_info(struct wlp *wlp)
{
 int result;
 struct device *dev = &wlp->rc->uwb_dev.dev;

 result = __wlp_alloc_device_info(wlp);
 if (result < 0) {
  dev_err(dev, "WLP: Unable to allocate area for "
   "device information.\n");
  return result;
 }
 __wlp_fill_device_info(wlp);
 return 0;
}
