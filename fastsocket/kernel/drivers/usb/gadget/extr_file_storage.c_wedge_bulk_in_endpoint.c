
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_dev {int bulk_in; } ;


 int DBG (struct fsg_dev*,char*) ;
 int EAGAIN ;
 int EINTR ;
 int VDBG (struct fsg_dev*,char*) ;
 int WARNING (struct fsg_dev*,char*,int) ;
 scalar_t__ msleep_interruptible (int) ;
 int usb_ep_set_wedge (int ) ;

__attribute__((used)) static int wedge_bulk_in_endpoint(struct fsg_dev *fsg)
{
 int rc;

 DBG(fsg, "bulk-in set wedge\n");
 rc = usb_ep_set_wedge(fsg->bulk_in);
 if (rc == -EAGAIN)
  VDBG(fsg, "delayed bulk-in endpoint wedge\n");
 while (rc != 0) {
  if (rc != -EAGAIN) {
   WARNING(fsg, "usb_ep_set_wedge -> %d\n", rc);
   rc = 0;
   break;
  }


  if (msleep_interruptible(100) != 0)
   return -EINTR;
  rc = usb_ep_set_wedge(fsg->bulk_in);
 }
 return rc;
}
