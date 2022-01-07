
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {unsigned int recv_bulk_pipe; unsigned int send_bulk_pipe; scalar_t__ extra; } ;
struct sddr55_card_info {int last_access; } ;


 int DMA_FROM_DEVICE ;
 int USB_STOR_XFER_GOOD ;
 int jiffies ;
 int usb_stor_bulk_transfer_buf (struct us_data*,unsigned int,unsigned char*,unsigned int,int *) ;

__attribute__((used)) static int
sddr55_bulk_transport(struct us_data *us, int direction,
        unsigned char *data, unsigned int len) {
 struct sddr55_card_info *info = (struct sddr55_card_info *)us->extra;
 unsigned int pipe = (direction == DMA_FROM_DEVICE) ?
   us->recv_bulk_pipe : us->send_bulk_pipe;

 if (!len)
  return USB_STOR_XFER_GOOD;
 info->last_access = jiffies;
 return usb_stor_bulk_transfer_buf(us, pipe, data, len, ((void*)0));
}
