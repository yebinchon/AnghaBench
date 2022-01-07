
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int send_bulk_pipe; } ;


 int USB_STOR_XFER_GOOD ;
 int US_DEBUGP (char*,unsigned int) ;
 int usb_stor_bulk_transfer_buf (struct us_data*,int ,unsigned char*,unsigned int,int *) ;

__attribute__((used)) static inline int jumpshot_bulk_write(struct us_data *us,
          unsigned char *data,
          unsigned int len)
{
 if (len == 0)
  return USB_STOR_XFER_GOOD;

 US_DEBUGP("jumpshot_bulk_write:  len = %d\n", len);
 return usb_stor_bulk_transfer_buf(us, us->send_bulk_pipe,
   data, len, ((void*)0));
}
