
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;
typedef int name ;


 int USB_MIXER_S16 ;
 int snd_create_std_mono_ctl (struct usb_mixer_interface*,unsigned int const,unsigned int const,unsigned int,int const,char*,int ) ;
 int snd_usb_mixer_vol_tlv ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int snd_ftu_create_effect_send_ctls(struct usb_mixer_interface *mixer)
{
 unsigned int cmask;
 int err, ch;
 char name[48];

 const unsigned int id = 5;
 const int val_type = USB_MIXER_S16;
 const unsigned int control = 9;

 for (ch = 0; ch < 8; ++ch) {
  cmask = 1 << ch;
  snprintf(name, sizeof(name),
   "Effect Send AIn%d Volume", ch + 1);
  err = snd_create_std_mono_ctl(mixer, id, control, cmask,
      val_type, name,
      snd_usb_mixer_vol_tlv);
  if (err < 0)
   return err;
 }
 for (ch = 8; ch < 16; ++ch) {
  cmask = 1 << ch;
  snprintf(name, sizeof(name),
   "Effect Send DIn%d Volume", ch - 7);
  err = snd_create_std_mono_ctl(mixer, id, control, cmask,
      val_type, name,
      snd_usb_mixer_vol_tlv);
  if (err < 0)
   return err;
 }
 return 0;
}
