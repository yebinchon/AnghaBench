
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usblp {int intf; scalar_t__ present; scalar_t__ used; int flags; } ;
struct inode {int dummy; } ;
struct file {struct usblp* private_data; } ;


 int LP_ABORT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_autopm_put_interface (int ) ;
 int usblp_cleanup (struct usblp*) ;
 int usblp_mutex ;
 int usblp_unlink_urbs (struct usblp*) ;

__attribute__((used)) static int usblp_release(struct inode *inode, struct file *file)
{
 struct usblp *usblp = file->private_data;

 usblp->flags &= ~LP_ABORT;

 mutex_lock (&usblp_mutex);
 usblp->used = 0;
 if (usblp->present) {
  usblp_unlink_urbs(usblp);
  usb_autopm_put_interface(usblp->intf);
 } else
  usblp_cleanup (usblp);
 mutex_unlock (&usblp_mutex);
 return 0;
}
