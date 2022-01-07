
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_status {scalar_t__ lastev; } ;
struct poll_table_struct {int dummy; } ;
struct file {int f_mode; struct usb_device_status* private_data; } ;


 int FMODE_READ ;
 int GFP_KERNEL ;
 unsigned int POLLIN ;
 scalar_t__ conndiscevcnt ;
 int deviceconndiscwq ;
 int kfree (struct usb_device_status*) ;
 struct usb_device_status* kmalloc (int,int ) ;
 int lock_kernel () ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int unlock_kernel () ;

__attribute__((used)) static unsigned int usb_device_poll(struct file *file,
        struct poll_table_struct *wait)
{
 struct usb_device_status *st = file->private_data;
 unsigned int mask = 0;

 lock_kernel();
 if (!st) {
  st = kmalloc(sizeof(struct usb_device_status), GFP_KERNEL);



  if (file->private_data) {
   kfree(st);
   st = file->private_data;
   goto lost_race;
  }

  if (!st) {
   unlock_kernel();
   return POLLIN;
  }






  st->lastev = conndiscevcnt;
  file->private_data = st;
  mask = POLLIN;
 }
lost_race:
 if (file->f_mode & FMODE_READ)
  poll_wait(file, &deviceconndiscwq, wait);
 if (st->lastev != conndiscevcnt)
  mask |= POLLIN;
 st->lastev = conndiscevcnt;
 unlock_kernel();
 return mask;
}
