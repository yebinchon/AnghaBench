
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; int io_lock; scalar_t__ open; int download_urb; int write_urb; int irq_urb; } ;


 int EIO ;
 scalar_t__ NOT_CONNECTED ;
 int dbg (char*) ;
 TYPE_1__* mdc800 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int mdc800_device_release (struct inode* inode, struct file *file)
{
 int retval=0;
 dbg ("Mustek MDC800 device closed.");

 mutex_lock(&mdc800->io_lock);
 if (mdc800->open && (mdc800->state != NOT_CONNECTED))
 {
  usb_kill_urb(mdc800->irq_urb);
  usb_kill_urb(mdc800->write_urb);
  usb_kill_urb(mdc800->download_urb);
  mdc800->open=0;
 }
 else
 {
  retval=-EIO;
 }

 mutex_unlock(&mdc800->io_lock);
 return retval;
}
