
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_elem_info {int val_type; } ;
__attribute__((used)) static int convert_signed_value(struct usb_mixer_elem_info *cval, int val)
{
 switch (cval->val_type) {
 case 133:
  return !!val;
 case 132:
  return !val;
 case 128:
  val &= 0xff;
  break;
 case 130:
  val &= 0xff;
  if (val >= 0x80)
   val -= 0x100;
  break;
 case 129:
  val &= 0xffff;
  break;
 case 131:
  val &= 0xffff;
  if (val >= 0x8000)
   val -= 0x10000;
  break;
 }
 return val;
}
