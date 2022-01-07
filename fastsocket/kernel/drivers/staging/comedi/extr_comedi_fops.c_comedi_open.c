
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct comedi_device_file_info {struct comedi_device* device; } ;
struct comedi_device {int in_request_module; scalar_t__ use_count; int mutex; int (* open ) (struct comedi_device*) ;scalar_t__ attached; TYPE_1__* driver; int minor; } ;
struct TYPE_2__ {int module; } ;


 int CAP_NET_ADMIN ;
 int COMEDI_MAJOR ;
 int DPRINTK (char*) ;
 int ENODEV ;
 int ENOSYS ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 scalar_t__ capable (int ) ;
 struct comedi_device_file_info* comedi_get_device_file_info (unsigned int const) ;
 unsigned int iminor (struct inode*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int request_module (char*,int ,int ) ;
 int stub1 (struct comedi_device*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int comedi_open(struct inode *inode, struct file *file)
{
 const unsigned minor = iminor(inode);
 struct comedi_device_file_info *dev_file_info =
     comedi_get_device_file_info(minor);
 struct comedi_device *dev =
     dev_file_info ? dev_file_info->device : ((void*)0);

 if (dev == ((void*)0)) {
  DPRINTK("invalid minor number\n");
  return -ENODEV;
 }
 mutex_lock(&dev->mutex);
 if (dev->attached)
  goto ok;
 if (!capable(CAP_NET_ADMIN) && dev->in_request_module) {
  DPRINTK("in request module\n");
  mutex_unlock(&dev->mutex);
  return -ENODEV;
 }
 if (capable(CAP_NET_ADMIN) && dev->in_request_module)
  goto ok;

 dev->in_request_module = 1;







 dev->in_request_module = 0;

 if (!dev->attached && !capable(CAP_NET_ADMIN)) {
  DPRINTK("not attached and not CAP_NET_ADMIN\n");
  mutex_unlock(&dev->mutex);
  return -ENODEV;
 }
ok:
 __module_get(THIS_MODULE);

 if (dev->attached) {
  if (!try_module_get(dev->driver->module)) {
   module_put(THIS_MODULE);
   mutex_unlock(&dev->mutex);
   return -ENOSYS;
  }
 }

 if (dev->attached && dev->use_count == 0 && dev->open)
  dev->open(dev);

 dev->use_count++;

 mutex_unlock(&dev->mutex);

 return 0;
}
