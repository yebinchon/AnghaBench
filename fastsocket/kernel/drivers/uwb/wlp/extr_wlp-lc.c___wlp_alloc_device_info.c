
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlp_device_info {int dummy; } ;
struct wlp {int * dev_info; TYPE_2__* rc; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 int * kzalloc (int,int ) ;

int __wlp_alloc_device_info(struct wlp *wlp)
{
 struct device *dev = &wlp->rc->uwb_dev.dev;
 BUG_ON(wlp->dev_info != ((void*)0));
 wlp->dev_info = kzalloc(sizeof(struct wlp_device_info), GFP_KERNEL);
 if (wlp->dev_info == ((void*)0)) {
  dev_err(dev, "WLP: Unable to allocate memory for "
   "device information.\n");
  return -ENOMEM;
 }
 return 0;
}
