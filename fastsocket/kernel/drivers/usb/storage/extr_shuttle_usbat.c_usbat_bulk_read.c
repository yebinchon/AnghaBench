
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int recv_bulk_pipe; } ;


 int USB_STOR_XFER_GOOD ;
 int US_DEBUGP (char*,unsigned int) ;
 int usb_stor_bulk_transfer_sg (struct us_data*,int ,void*,unsigned int,int,int *) ;

__attribute__((used)) static int usbat_bulk_read(struct us_data *us,
      void* buf,
      unsigned int len,
      int use_sg)
{
 if (len == 0)
  return USB_STOR_XFER_GOOD;

 US_DEBUGP("usbat_bulk_read: len = %d\n", len);
 return usb_stor_bulk_transfer_sg(us, us->recv_bulk_pipe, buf, len, use_sg, ((void*)0));
}
