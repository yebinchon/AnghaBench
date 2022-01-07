
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {unsigned char* iobuf; int recv_bulk_pipe; } ;


 int EIO ;
 unsigned char LUNBITS ;
 int USB_STOR_XFER_GOOD ;
 int memset (unsigned char*,int ,int) ;
 int sddr09_send_scsi_command (struct us_data*,unsigned char*,int) ;
 int usb_stor_bulk_transfer_buf (struct us_data*,int ,unsigned char*,int,int *) ;

__attribute__((used)) static int
sddr09_request_sense(struct us_data *us, unsigned char *sensebuf, int buflen) {
 unsigned char *command = us->iobuf;
 int result;

 memset(command, 0, 12);
 command[0] = 0x03;
 command[1] = LUNBITS;
 command[4] = buflen;

 result = sddr09_send_scsi_command(us, command, 12);
 if (result)
  return result;

 result = usb_stor_bulk_transfer_buf(us, us->recv_bulk_pipe,
   sensebuf, buflen, ((void*)0));
 return (result == USB_STOR_XFER_GOOD ? 0 : -EIO);
}
