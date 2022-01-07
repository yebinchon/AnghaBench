
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usblp {size_t current_protocol; int rcomplete; int rstatus; int lock; scalar_t__ readcount; int urbs; int readbuf; TYPE_2__* protocol; int dev; } ;
struct urb {int dummy; } ;
struct TYPE_4__ {TYPE_1__* epread; } ;
struct TYPE_3__ {int bEndpointAddress; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USBLP_BUF_SIZE_IN ;
 int dbg (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int ,int ,int ,struct usblp*) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;
 int usblp_bulk_read ;

__attribute__((used)) static int usblp_submit_read(struct usblp *usblp)
{
 struct urb *urb;
 unsigned long flags;
 int rc;

 rc = -ENOMEM;
 if ((urb = usb_alloc_urb(0, GFP_KERNEL)) == ((void*)0))
  goto raise_urb;

 usb_fill_bulk_urb(urb, usblp->dev,
  usb_rcvbulkpipe(usblp->dev,
    usblp->protocol[usblp->current_protocol].epread->bEndpointAddress),
  usblp->readbuf, USBLP_BUF_SIZE_IN,
  usblp_bulk_read, usblp);
 usb_anchor_urb(urb, &usblp->urbs);

 spin_lock_irqsave(&usblp->lock, flags);
 usblp->readcount = 0;
 usblp->rcomplete = 0;
 spin_unlock_irqrestore(&usblp->lock, flags);
 if ((rc = usb_submit_urb(urb, GFP_KERNEL)) < 0) {
  dbg("error submitting urb (%d)", rc);
  spin_lock_irqsave(&usblp->lock, flags);
  usblp->rstatus = rc;
  usblp->rcomplete = 1;
  spin_unlock_irqrestore(&usblp->lock, flags);
  goto raise_submit;
 }

 return 0;

raise_submit:
 usb_unanchor_urb(urb);
 usb_free_urb(urb);
raise_urb:
 return rc;
}
