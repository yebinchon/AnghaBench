
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct linux_binprm {TYPE_1__* cred; int filename; } ;
struct TYPE_2__ {scalar_t__ egid; int euid; } ;


 int EPERM ;
 int product_id ;
 int root_dbg (char*,...) ;
 struct usb_device* usb_find_device (int ,int ) ;
 int usb_put_dev (struct usb_device*) ;
 int vendor_id ;

__attribute__((used)) static int rootplug_bprm_check_security (struct linux_binprm *bprm)
{
 struct usb_device *dev;

 root_dbg("file %s, e_uid = %d, e_gid = %d\n",
   bprm->filename, bprm->cred->euid, bprm->cred->egid);

 if (bprm->cred->egid == 0) {
  dev = usb_find_device(vendor_id, product_id);
  if (!dev) {
   root_dbg("e_gid = 0, and device not found, "
     "task not allowed to run...\n");
   return -EPERM;
  }
  usb_put_dev(dev);
 }

 return 0;
}
