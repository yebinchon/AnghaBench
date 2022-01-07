
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usX2Ydev {int In04urb; int In04Buf; int dev; int In04WaitQueue; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int i_usX2Y_In04Int ;
 int init_waitqueue_head (int *) ;
 int kmalloc (int,int ) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (int ,int ,int ,int ,int,int ,struct usX2Ydev*,int) ;
 int usb_free_urb (int ) ;
 int usb_rcvintpipe (int ,int) ;
 int usb_submit_urb (int ,int ) ;

int usX2Y_In04_init(struct usX2Ydev *usX2Y)
{
 if (! (usX2Y->In04urb = usb_alloc_urb(0, GFP_KERNEL)))
  return -ENOMEM;

 if (! (usX2Y->In04Buf = kmalloc(21, GFP_KERNEL))) {
  usb_free_urb(usX2Y->In04urb);
  return -ENOMEM;
 }

 init_waitqueue_head(&usX2Y->In04WaitQueue);
 usb_fill_int_urb(usX2Y->In04urb, usX2Y->dev, usb_rcvintpipe(usX2Y->dev, 0x4),
    usX2Y->In04Buf, 21,
    i_usX2Y_In04Int, usX2Y,
    10);
 return usb_submit_urb(usX2Y->In04urb, GFP_KERNEL);
}
