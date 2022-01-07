
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;
typedef int u16_t ;


 int USB_ENDPOINT_CMD_INDEX ;
 int zfwUsbCmd (int *,int ,int *,int ) ;

void zfIdlCmd(zdev_t* dev, u32_t* cmd, u16_t cmdLen)
{

    zfwUsbCmd(dev, USB_ENDPOINT_CMD_INDEX, cmd, cmdLen);


    return;
}
