
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_mixer_interface {scalar_t__ chip; } ;
struct snd_usb_audio {int dev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ftu_eff_switch_priv_val {int cached_value; int is_cached; scalar_t__ mixer; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 int UAC_GET_CUR ;
 int UAC_SET_CUR ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_usb_ctl_msg (int ,int ,int ,int,int const,int const,unsigned char*,int const) ;
 int const snd_usb_ctrl_intf (struct snd_usb_audio*) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int snd_ftu_eff_switch_put(struct snd_kcontrol *kctl,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_usb_audio *chip;
 struct snd_ftu_eff_switch_priv_val *pval;

 struct usb_mixer_interface *mixer;
 int changed, cur_val, err, new_val;
 unsigned char value[2];


 const int id = 6;
 const int validx = 1;
 const int val_len = 2;

 changed = 0;

 pval = (struct snd_ftu_eff_switch_priv_val *)
  kctl->private_value;
 cur_val = pval->cached_value;
 new_val = ucontrol->value.enumerated.item[0];

 mixer = (struct usb_mixer_interface *) pval->mixer;
 if (snd_BUG_ON(!mixer))
  return -EINVAL;

 chip = (struct snd_usb_audio *) mixer->chip;
 if (snd_BUG_ON(!chip))
  return -EINVAL;

 if (!pval->is_cached) {

  err = snd_usb_ctl_msg(chip->dev,
    usb_rcvctrlpipe(chip->dev, 0), UAC_GET_CUR,
    USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_IN,
    validx << 8, snd_usb_ctrl_intf(chip) | (id << 8),
    value, val_len);
  if (err < 0)
   return err;

  cur_val = value[0];
  pval->cached_value = cur_val;
  pval->is_cached = 1;
 }

 if (cur_val != new_val) {
  value[0] = new_val;
  value[1] = 0;
  err = snd_usb_ctl_msg(chip->dev,
    usb_sndctrlpipe(chip->dev, 0), UAC_SET_CUR,
    USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_OUT,
    validx << 8, snd_usb_ctrl_intf(chip) | (id << 8),
    value, val_len);
  if (err < 0)
   return err;

  pval->cached_value = new_val;
  pval->is_cached = 1;
  changed = 1;
 }

 return changed;
}
