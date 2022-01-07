
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_listener {struct uio_device* dev; } ;
struct uio_device {int async_queue; } ;
struct file {struct uio_listener* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int uio_fasync(int fd, struct file *filep, int on)
{
 struct uio_listener *listener = filep->private_data;
 struct uio_device *idev = listener->dev;

 return fasync_helper(fd, filep, on, &idev->async_queue);
}
