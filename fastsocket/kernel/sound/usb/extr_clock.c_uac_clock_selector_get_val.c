
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {int dev; } ;
typedef int buf ;


 int UAC2_CS_CUR ;
 int UAC2_CX_CLOCK_SELECTOR ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int snd_usb_ctl_msg (int ,int ,int ,int,int,int,unsigned char*,int) ;
 int snd_usb_ctrl_intf (struct snd_usb_audio*) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int uac_clock_selector_get_val(struct snd_usb_audio *chip, int selector_id)
{
 unsigned char buf;
 int ret;

 ret = snd_usb_ctl_msg(chip->dev, usb_rcvctrlpipe(chip->dev, 0),
         UAC2_CS_CUR,
         USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_IN,
         UAC2_CX_CLOCK_SELECTOR << 8,
         snd_usb_ctrl_intf(chip) | (selector_id << 8),
         &buf, sizeof(buf));

 if (ret < 0)
  return ret;

 return buf;
}
