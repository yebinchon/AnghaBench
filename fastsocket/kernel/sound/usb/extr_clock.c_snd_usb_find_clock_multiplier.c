
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_interface {int extralen; int extra; } ;
struct uac_clock_multiplier_descriptor {int bClockID; } ;


 int UAC2_CLOCK_MULTIPLIER ;
 struct uac_clock_multiplier_descriptor* snd_usb_find_csint_desc (int ,int ,struct uac_clock_multiplier_descriptor*,int ) ;

__attribute__((used)) static struct uac_clock_multiplier_descriptor *
 snd_usb_find_clock_multiplier(struct usb_host_interface *ctrl_iface,
          int clock_id)
{
 struct uac_clock_multiplier_descriptor *cs = ((void*)0);

 while ((cs = snd_usb_find_csint_desc(ctrl_iface->extra,
          ctrl_iface->extralen,
          cs, UAC2_CLOCK_MULTIPLIER))) {
  if (cs->bClockID == clock_id)
   return cs;
 }

 return ((void*)0);
}
