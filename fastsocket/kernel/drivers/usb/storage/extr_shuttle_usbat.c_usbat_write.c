
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int send_ctrl_pipe; } ;


 unsigned char USBAT_CMD_WRITE_REG ;
 int short_pack (unsigned char,unsigned char) ;
 int usb_stor_ctrl_transfer (struct us_data*,int ,unsigned char,int,int ,int ,int *,int ) ;

__attribute__((used)) static int usbat_write(struct us_data *us,
         unsigned char access,
         unsigned char reg,
         unsigned char content)
{
 return usb_stor_ctrl_transfer(us,
  us->send_ctrl_pipe,
  access | USBAT_CMD_WRITE_REG,
  0x40,
  short_pack(reg, content),
  0,
  ((void*)0),
  0);
}
