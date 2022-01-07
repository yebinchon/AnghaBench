
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsg_dev {TYPE_1__* ep0; int ep0req; } ;
struct TYPE_2__ {int name; } ;


 int ESHUTDOWN ;
 int GFP_ATOMIC ;
 int WARNING (struct fsg_dev*,char*,int ,int) ;
 int usb_ep_queue (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int ep0_queue(struct fsg_dev *fsg)
{
 int rc;

 rc = usb_ep_queue(fsg->ep0, fsg->ep0req, GFP_ATOMIC);
 if (rc != 0 && rc != -ESHUTDOWN) {


  WARNING(fsg, "error in submission: %s --> %d\n",
    fsg->ep0->name, rc);
 }
 return rc;
}
