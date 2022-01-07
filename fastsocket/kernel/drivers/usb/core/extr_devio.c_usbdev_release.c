
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct dev_state* private_data; } ;
struct dev_state {int disc_pid; scalar_t__ ifclaimed; int list; struct usb_device* dev; } ;
struct async {int dummy; } ;


 struct async* async_getcompleted (struct dev_state*) ;
 int destroy_all_async (struct dev_state*) ;
 int free_async (struct async*) ;
 int kfree (struct dev_state*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_pid (int ) ;
 int releaseintf (struct dev_state*,unsigned int) ;
 scalar_t__ test_bit (unsigned int,scalar_t__*) ;
 int usb_autosuspend_device (struct usb_device*) ;
 int usb_hub_release_all_ports (struct usb_device*,struct dev_state*) ;
 int usb_lock_device (struct usb_device*) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_unlock_device (struct usb_device*) ;
 int usbfs_mutex ;

__attribute__((used)) static int usbdev_release(struct inode *inode, struct file *file)
{
 struct dev_state *ps = file->private_data;
 struct usb_device *dev = ps->dev;
 unsigned int ifnum;
 struct async *as;

 usb_lock_device(dev);
 usb_hub_release_all_ports(dev, ps);


 mutex_lock(&usbfs_mutex);
 list_del_init(&ps->list);
 mutex_unlock(&usbfs_mutex);

 for (ifnum = 0; ps->ifclaimed && ifnum < 8*sizeof(ps->ifclaimed);
   ifnum++) {
  if (test_bit(ifnum, &ps->ifclaimed))
   releaseintf(ps, ifnum);
 }
 destroy_all_async(ps);
 usb_autosuspend_device(dev);
 usb_unlock_device(dev);
 usb_put_dev(dev);
 put_pid(ps->disc_pid);

 as = async_getcompleted(ps);
 while (as) {
  free_async(as);
  as = async_getcompleted(ps);
 }
 kfree(ps);
 return 0;
}
