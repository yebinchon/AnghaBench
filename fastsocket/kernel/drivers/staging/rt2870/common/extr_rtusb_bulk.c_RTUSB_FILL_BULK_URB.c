
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_complete_t ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;


 int usb_fill_bulk_urb (struct urb*,struct usb_device*,unsigned int,void*,int,scalar_t__,void*) ;

void RTUSB_FILL_BULK_URB (struct urb *pUrb,
 struct usb_device *pUsb_Dev,
 unsigned int bulkpipe,
 void *pTransferBuf,
 int BufSize,
 usb_complete_t Complete,
 void *pContext)
{

 usb_fill_bulk_urb(pUrb, pUsb_Dev, bulkpipe, pTransferBuf, BufSize, (usb_complete_t)Complete, pContext);

}
