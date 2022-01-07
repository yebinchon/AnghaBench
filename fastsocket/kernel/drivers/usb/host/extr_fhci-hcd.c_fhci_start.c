
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_hcd {int state; } ;
struct fhci_hcd {TYPE_3__* vroot_hub; int lock; int usb_lld; } ;
struct TYPE_5__ {scalar_t__ wPortChange; scalar_t__ wPortStatus; } ;
struct TYPE_4__ {scalar_t__ wHubChange; scalar_t__ wHubStatus; } ;
struct TYPE_6__ {int dev_num; TYPE_2__ port; TYPE_1__ hub; } ;


 int ENOMEM ;
 int HC_STATE_RUNNING ;
 int fhci_create_lld (struct fhci_hcd*) ;
 int fhci_err (struct fhci_hcd*,char*) ;
 int fhci_mem_free (struct fhci_hcd*) ;
 int fhci_mem_init (struct fhci_hcd*) ;
 int fhci_usb_enable (struct fhci_hcd*) ;
 int fhci_usb_init (struct fhci_hcd*) ;
 struct fhci_hcd* hcd_to_fhci (struct usb_hcd*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int fhci_start(struct usb_hcd *hcd)
{
 int ret;
 struct fhci_hcd *fhci = hcd_to_fhci(hcd);

 ret = fhci_mem_init(fhci);
 if (ret) {
  fhci_err(fhci, "failed to allocate memory\n");
  goto err;
 }

 fhci->usb_lld = fhci_create_lld(fhci);
 if (!fhci->usb_lld) {
  fhci_err(fhci, "low level driver config failed\n");
  ret = -ENOMEM;
  goto err;
 }

 ret = fhci_usb_init(fhci);
 if (ret) {
  fhci_err(fhci, "low level driver initialize failed\n");
  goto err;
 }

 spin_lock_init(&fhci->lock);


 fhci->vroot_hub->dev_num = 1;
 fhci->vroot_hub->hub.wHubStatus = 0;
 fhci->vroot_hub->hub.wHubChange = 0;
 fhci->vroot_hub->port.wPortStatus = 0;
 fhci->vroot_hub->port.wPortChange = 0;

 hcd->state = HC_STATE_RUNNING;
 fhci_usb_enable(fhci);
 return 0;
err:
 fhci_mem_free(fhci);
 return ret;
}
