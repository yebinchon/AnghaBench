
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_info {struct uio_device* uio_dev; } ;
struct uio_device {int async_queue; int wait; int event; } ;


 int POLL_IN ;
 int SIGIO ;
 int atomic_inc (int *) ;
 int kill_fasync (int *,int ,int ) ;
 int wake_up_interruptible (int *) ;

void uio_event_notify(struct uio_info *info)
{
 struct uio_device *idev = info->uio_dev;

 atomic_inc(&idev->event);
 wake_up_interruptible(&idev->wait);
 kill_fasync(&idev->async_queue, SIGIO, POLL_IN);
}
