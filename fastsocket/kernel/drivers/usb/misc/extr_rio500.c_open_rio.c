
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rio_usb_data {int isopen; TYPE_1__* rio_dev; int lock; int wait_q; int present; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int dev_info (int *,char*) ;
 int init_waitqueue_head (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rio_usb_data rio_instance ;

__attribute__((used)) static int open_rio(struct inode *inode, struct file *file)
{
 struct rio_usb_data *rio = &rio_instance;

 mutex_lock(&(rio->lock));

 if (rio->isopen || !rio->present) {
  mutex_unlock(&(rio->lock));
  return -EBUSY;
 }
 rio->isopen = 1;

 init_waitqueue_head(&rio->wait_q);

 mutex_unlock(&(rio->lock));

 dev_info(&rio->rio_dev->dev, "Rio opened.\n");

 return 0;
}
