
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_hcd {int self; TYPE_1__* driver; } ;
struct urb {int reject; TYPE_2__* dev; int use_count; int urb_list; int * hcpriv; } ;
typedef int gfp_t ;
struct TYPE_4__ {int urbnum; int bus; } ;
struct TYPE_3__ {int (* urb_enqueue ) (struct usb_hcd*,struct urb*,int ) ;} ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 struct usb_hcd* bus_to_hcd (int ) ;
 scalar_t__ is_root_hub (TYPE_2__*) ;
 int map_urb_for_dma (struct usb_hcd*,struct urb*,int ) ;
 int rh_urb_enqueue (struct usb_hcd*,struct urb*) ;
 int stub1 (struct usb_hcd*,struct urb*,int ) ;
 scalar_t__ unlikely (int) ;
 int unmap_urb_for_dma (struct usb_hcd*,struct urb*) ;
 int usb_get_urb (struct urb*) ;
 int usb_kill_urb_queue ;
 int usb_put_urb (struct urb*) ;
 int usbmon_urb_submit (int *,struct urb*) ;
 int usbmon_urb_submit_error (int *,struct urb*,int) ;
 int wake_up (int *) ;

int usb_hcd_submit_urb (struct urb *urb, gfp_t mem_flags)
{
 int status;
 struct usb_hcd *hcd = bus_to_hcd(urb->dev->bus);





 usb_get_urb(urb);
 atomic_inc(&urb->use_count);
 atomic_inc(&urb->dev->urbnum);
 usbmon_urb_submit(&hcd->self, urb);
 status = map_urb_for_dma(hcd, urb, mem_flags);
 if (unlikely(status)) {
  usbmon_urb_submit_error(&hcd->self, urb, status);
  goto error;
 }

 if (is_root_hub(urb->dev))
  status = rh_urb_enqueue(hcd, urb);
 else
  status = hcd->driver->urb_enqueue(hcd, urb, mem_flags);

 if (unlikely(status)) {
  usbmon_urb_submit_error(&hcd->self, urb, status);
  unmap_urb_for_dma(hcd, urb);
 error:
  urb->hcpriv = ((void*)0);
  INIT_LIST_HEAD(&urb->urb_list);
  atomic_dec(&urb->use_count);
  atomic_dec(&urb->dev->urbnum);
  if (atomic_read(&urb->reject))
   wake_up(&usb_kill_urb_queue);
  usb_put_urb(urb);
 }
 return status;
}
