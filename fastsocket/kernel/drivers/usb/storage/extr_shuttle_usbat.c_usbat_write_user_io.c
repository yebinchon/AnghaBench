
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int send_ctrl_pipe; } ;


 int USBAT_CMD_UIO ;
 int USBAT_UIO_WRITE ;
 int short_pack (unsigned char,unsigned char) ;
 int usb_stor_ctrl_transfer (struct us_data*,int ,int ,int,int ,int ,int *,int ) ;

__attribute__((used)) static int usbat_write_user_io(struct us_data *us,
          unsigned char enable_flags,
          unsigned char data_flags)
{
 return usb_stor_ctrl_transfer(us,
  us->send_ctrl_pipe,
  USBAT_CMD_UIO,
  0x40,
  short_pack(enable_flags, data_flags),
  0,
  ((void*)0),
  USBAT_UIO_WRITE);
}
