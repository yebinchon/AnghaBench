
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vx_core {TYPE_2__* hw; struct snd_card* card; } ;
struct TYPE_3__ {int p; } ;
struct snd_kcontrol_new {unsigned int index; char* name; int private_value; TYPE_1__ tlv; } ;
struct snd_card {int driver; int mixername; } ;
struct TYPE_4__ {unsigned int num_outs; unsigned int num_ins; int output_level_db_scale; } ;


 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct vx_core*) ;
 int sprintf (char*,char*,char*) ;
 int strcpy (int ,int ) ;
 struct snd_kcontrol_new vx_control_audio_gain ;
 struct snd_kcontrol_new vx_control_audio_src ;
 struct snd_kcontrol_new vx_control_clock_mode ;
 struct snd_kcontrol_new vx_control_iec958 ;
 struct snd_kcontrol_new vx_control_iec958_mask ;
 struct snd_kcontrol_new vx_control_monitor_gain ;
 struct snd_kcontrol_new vx_control_monitor_switch ;
 struct snd_kcontrol_new vx_control_output_level ;
 struct snd_kcontrol_new vx_control_output_switch ;
 struct snd_kcontrol_new vx_control_peak_meter ;
 struct snd_kcontrol_new vx_control_saturation ;
 struct snd_kcontrol_new vx_control_vu_meter ;
 int vx_reset_audio_levels (struct vx_core*) ;

int snd_vx_mixer_new(struct vx_core *chip)
{
 unsigned int i, c;
 int err;
 struct snd_kcontrol_new temp;
 struct snd_card *card = chip->card;
 char name[32];

 strcpy(card->mixername, card->driver);


 for (i = 0; i < chip->hw->num_outs; i++) {
  temp = vx_control_output_level;
  temp.index = i;
  temp.tlv.p = chip->hw->output_level_db_scale;
  if ((err = snd_ctl_add(card, snd_ctl_new1(&temp, chip))) < 0)
   return err;
 }


 for (i = 0; i < chip->hw->num_outs; i++) {
  int val = i * 2;
  temp = vx_control_audio_gain;
  temp.index = i;
  temp.name = "PCM Playback Volume";
  temp.private_value = val;
  if ((err = snd_ctl_add(card, snd_ctl_new1(&temp, chip))) < 0)
   return err;
  temp = vx_control_output_switch;
  temp.index = i;
  temp.private_value = val;
  if ((err = snd_ctl_add(card, snd_ctl_new1(&temp, chip))) < 0)
   return err;
  temp = vx_control_monitor_gain;
  temp.index = i;
  temp.private_value = val;
  if ((err = snd_ctl_add(card, snd_ctl_new1(&temp, chip))) < 0)
   return err;
  temp = vx_control_monitor_switch;
  temp.index = i;
  temp.private_value = val;
  if ((err = snd_ctl_add(card, snd_ctl_new1(&temp, chip))) < 0)
   return err;
 }
 for (i = 0; i < chip->hw->num_outs; i++) {
  temp = vx_control_audio_gain;
  temp.index = i;
  temp.name = "PCM Capture Volume";
  temp.private_value = (i * 2) | (1 << 8);
  if ((err = snd_ctl_add(card, snd_ctl_new1(&temp, chip))) < 0)
   return err;
 }


 if ((err = snd_ctl_add(card, snd_ctl_new1(&vx_control_audio_src, chip))) < 0)
  return err;

 if ((err = snd_ctl_add(card, snd_ctl_new1(&vx_control_clock_mode, chip))) < 0)
  return err;

 if ((err = snd_ctl_add(card, snd_ctl_new1(&vx_control_iec958_mask, chip))) < 0)
  return err;
 if ((err = snd_ctl_add(card, snd_ctl_new1(&vx_control_iec958, chip))) < 0)
  return err;

 for (c = 0; c < 2; c++) {
  static char *dir[2] = { "Output", "Input" };
  for (i = 0; i < chip->hw->num_ins; i++) {
   int val = (i * 2) | (c << 8);
   if (c == 1) {
    temp = vx_control_saturation;
    temp.index = i;
    temp.private_value = val;
    if ((err = snd_ctl_add(card, snd_ctl_new1(&temp, chip))) < 0)
     return err;
   }
   sprintf(name, "%s VU Meter", dir[c]);
   temp = vx_control_vu_meter;
   temp.index = i;
   temp.name = name;
   temp.private_value = val;
   if ((err = snd_ctl_add(card, snd_ctl_new1(&temp, chip))) < 0)
    return err;
   sprintf(name, "%s Peak Meter", dir[c]);
   temp = vx_control_peak_meter;
   temp.index = i;
   temp.name = name;
   temp.private_value = val;
   if ((err = snd_ctl_add(card, snd_ctl_new1(&temp, chip))) < 0)
    return err;
  }
 }
 vx_reset_audio_levels(chip);
 return 0;
}
