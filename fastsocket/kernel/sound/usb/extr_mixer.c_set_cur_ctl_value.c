
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_elem_info {int dummy; } ;


 int UAC_SET_CUR ;
 int snd_usb_mixer_set_ctl_value (struct usb_mixer_elem_info*,int ,int,int) ;

__attribute__((used)) static int set_cur_ctl_value(struct usb_mixer_elem_info *cval, int validx, int value)
{
 return snd_usb_mixer_set_ctl_value(cval, UAC_SET_CUR, validx, value);
}
