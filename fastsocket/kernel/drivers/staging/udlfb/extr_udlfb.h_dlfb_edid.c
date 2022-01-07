
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlfb_data {char* edid; int udev; } ;


 int usb_control_msg (int ,int ,int,int,int,int,char*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static void dlfb_edid(struct dlfb_data *dev_info)
{
 int i;
 int ret;
 char rbuf[2];

 for (i = 0; i < 128; i++) {
  ret =
      usb_control_msg(dev_info->udev,
        usb_rcvctrlpipe(dev_info->udev, 0), (0x02),
        (0x80 | (0x02 << 5)), i << 8, 0xA1, rbuf, 2,
        0);

  dev_info->edid[i] = rbuf[1];
 }

}
