
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct us_data {int recv_ctrl_pipe; } ;


 unsigned char USBAT_CMD_READ_REG ;
 int usb_stor_ctrl_transfer (struct us_data*,int ,unsigned char,int,int ,int ,unsigned char*,int) ;

__attribute__((used)) static int usbat_read(struct us_data *us,
        unsigned char access,
        unsigned char reg,
        unsigned char *content)
{
 return usb_stor_ctrl_transfer(us,
  us->recv_ctrl_pipe,
  access | USBAT_CMD_READ_REG,
  0xC0,
  (u16)reg,
  0,
  content,
  1);
}
