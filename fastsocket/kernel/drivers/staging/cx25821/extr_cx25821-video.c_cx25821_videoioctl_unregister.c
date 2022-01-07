
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cx25821_dev {TYPE_1__* ioctl_dev; } ;
struct TYPE_3__ {int minor; } ;


 int video_device_release (TYPE_1__*) ;
 int video_unregister_device (TYPE_1__*) ;

void cx25821_videoioctl_unregister(struct cx25821_dev *dev)
{
 if (dev->ioctl_dev) {
  if (dev->ioctl_dev->minor != -1)
   video_unregister_device(dev->ioctl_dev);
  else
   video_device_release(dev->ioctl_dev);

  dev->ioctl_dev = ((void*)0);
 }
}
