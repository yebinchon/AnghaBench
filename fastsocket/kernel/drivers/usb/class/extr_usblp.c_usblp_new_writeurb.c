
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usblp {size_t current_protocol; TYPE_1__* protocol; int dev; } ;
struct urb {int transfer_flags; } ;
struct TYPE_4__ {int bEndpointAddress; } ;
struct TYPE_3__ {TYPE_2__* epwrite; } ;


 int GFP_KERNEL ;
 int URB_FREE_BUFFER ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,char*,int,int ,struct usblp*) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usblp_bulk_write ;

__attribute__((used)) static struct urb *usblp_new_writeurb(struct usblp *usblp, int transfer_length)
{
 struct urb *urb;
 char *writebuf;

 if ((writebuf = kmalloc(transfer_length, GFP_KERNEL)) == ((void*)0))
  return ((void*)0);
 if ((urb = usb_alloc_urb(0, GFP_KERNEL)) == ((void*)0)) {
  kfree(writebuf);
  return ((void*)0);
 }

 usb_fill_bulk_urb(urb, usblp->dev,
  usb_sndbulkpipe(usblp->dev,
   usblp->protocol[usblp->current_protocol].epwrite->bEndpointAddress),
  writebuf, transfer_length, usblp_bulk_write, usblp);
 urb->transfer_flags |= URB_FREE_BUFFER;

 return urb;
}
