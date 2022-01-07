
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int recv_ctrl_pipe; } ;


 int USBAT_CMD_UIO ;
 int USBAT_UIO_READ ;
 int US_DEBUGP (char*,unsigned short) ;
 int usb_stor_ctrl_transfer (struct us_data*,int ,int ,int,int ,int ,unsigned char*,int ) ;

__attribute__((used)) static int usbat_read_user_io(struct us_data *us, unsigned char *data_flags)
{
 int result;

 result = usb_stor_ctrl_transfer(us,
  us->recv_ctrl_pipe,
  USBAT_CMD_UIO,
  0xC0,
  0,
  0,
  data_flags,
  USBAT_UIO_READ);

 US_DEBUGP("usbat_read_user_io: UIO register reads %02X\n", (unsigned short) (*data_flags));

 return result;
}
