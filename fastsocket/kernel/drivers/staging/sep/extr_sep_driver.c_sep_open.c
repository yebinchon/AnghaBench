
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_flags; TYPE_1__* private_data; } ;
struct TYPE_3__ {scalar_t__ data_pool_bytes_allocated; } ;


 int EAGAIN ;
 int EINTR ;
 int ENODEV ;
 int O_NDELAY ;
 TYPE_1__* sep_dev ;
 int sep_event ;
 scalar_t__ sep_try_open (TYPE_1__*) ;
 scalar_t__ wait_event_interruptible (int ,scalar_t__) ;

__attribute__((used)) static int sep_open(struct inode *inode, struct file *filp)
{
 if (sep_dev == ((void*)0))
  return -ENODEV;


 if (filp->f_flags & O_NDELAY) {
  if (sep_try_open(sep_dev) == 0)
   return -EAGAIN;
 } else
  if (wait_event_interruptible(sep_event, sep_try_open(sep_dev)) < 0)
   return -EINTR;


 filp->private_data = sep_dev;

 sep_dev->data_pool_bytes_allocated = 0;
 return 0;
}
