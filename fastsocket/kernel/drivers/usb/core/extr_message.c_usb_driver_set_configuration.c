
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct set_config_request {int config; int work; int node; struct usb_device* udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int driver_set_config_work ;
 struct set_config_request* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int schedule_work (int *) ;
 int set_config_list ;
 int set_config_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_get_dev (struct usb_device*) ;

int usb_driver_set_configuration(struct usb_device *udev, int config)
{
 struct set_config_request *req;

 req = kmalloc(sizeof(*req), GFP_KERNEL);
 if (!req)
  return -ENOMEM;
 req->udev = udev;
 req->config = config;
 INIT_WORK(&req->work, driver_set_config_work);

 spin_lock(&set_config_lock);
 list_add(&req->node, &set_config_list);
 spin_unlock(&set_config_lock);

 usb_get_dev(udev);
 schedule_work(&req->work);
 return 0;
}
