
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_elem_info {int control; } ;


 int UAC_GET_CUR ;
 int get_ctl_value (struct usb_mixer_elem_info*,int ,int,int*) ;

__attribute__((used)) static inline int get_cur_mix_raw(struct usb_mixer_elem_info *cval,
      int channel, int *value)
{
 return get_ctl_value(cval, UAC_GET_CUR, (cval->control << 8) | channel, value);
}
