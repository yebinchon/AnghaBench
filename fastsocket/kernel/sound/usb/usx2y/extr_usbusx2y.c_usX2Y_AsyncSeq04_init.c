
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * buffer; int ** urb; } ;
struct usX2Ydev {TYPE_1__ AS04; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int URBS_AsyncSeq ;
 int URB_DataLen_AsyncSeq ;
 int i_usX2Y_Out04Int ;
 int * kmalloc (int,int ) ;
 int * usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (int *,int ,int ,int *,int ,int ,struct usX2Ydev*) ;
 int usb_sndbulkpipe (int ,int) ;

int usX2Y_AsyncSeq04_init(struct usX2Ydev *usX2Y)
{
 int err = 0,
  i;

 if (((void*)0) == (usX2Y->AS04.buffer = kmalloc(URB_DataLen_AsyncSeq*URBS_AsyncSeq, GFP_KERNEL))) {
  err = -ENOMEM;
 } else
  for (i = 0; i < URBS_AsyncSeq; ++i) {
   if (((void*)0) == (usX2Y->AS04.urb[i] = usb_alloc_urb(0, GFP_KERNEL))) {
    err = -ENOMEM;
    break;
   }
   usb_fill_bulk_urb( usX2Y->AS04.urb[i], usX2Y->dev,
      usb_sndbulkpipe(usX2Y->dev, 0x04),
      usX2Y->AS04.buffer + URB_DataLen_AsyncSeq*i, 0,
      i_usX2Y_Out04Int, usX2Y
    );
  }
 return err;
}
