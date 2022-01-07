
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
sddr09_read_deviceID(struct us_data *us, unsigned char *deviceID) {
 unsigned char *command = us->iobuf;
 unsigned char *content = us->iobuf;
 int result, i;

 memset(command, 0, 12);
 command[0] = 0xED;
 command[1] = LUNBITS;

 result = sddr09_send_scsi_command(us, command, 12);
 if (result)
  return result;

 result = usb_stor_bulk_transfer_buf(us, us->recv_bulk_pipe,
   content, 64, ((void*)0));

 for (i = 0; i < 4; i++)
  deviceID[i] = content[i];

 return (result == USB_STOR_XFER_GOOD ? 0 : -EIO);
}
