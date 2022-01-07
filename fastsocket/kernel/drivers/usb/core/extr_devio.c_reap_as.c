
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct dev_state {int wait; struct usb_device* dev; } ;
struct async {int dummy; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 struct async* async_getcompleted (struct dev_state*) ;
 int current ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int usb_lock_device (struct usb_device*) ;
 int usb_unlock_device (struct usb_device*) ;
 int wait ;

__attribute__((used)) static struct async *reap_as(struct dev_state *ps)
{
 DECLARE_WAITQUEUE(wait, current);
 struct async *as = ((void*)0);
 struct usb_device *dev = ps->dev;

 add_wait_queue(&ps->wait, &wait);
 for (;;) {
  __set_current_state(TASK_INTERRUPTIBLE);
  as = async_getcompleted(ps);
  if (as)
   break;
  if (signal_pending(current))
   break;
  usb_unlock_device(dev);
  schedule();
  usb_lock_device(dev);
 }
 remove_wait_queue(&ps->wait, &wait);
 set_current_state(TASK_RUNNING);
 return as;
}
