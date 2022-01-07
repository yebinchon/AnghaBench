
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcxhr {TYPE_1__* mgr; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_5__ {int max; int min; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_3__ value; int type; } ;
struct TYPE_4__ {scalar_t__ is_hr_stereo; } ;


 int HR222_LINE_CAPTURE_LEVEL_MAX ;
 int HR222_LINE_CAPTURE_LEVEL_MIN ;
 int HR222_LINE_PLAYBACK_LEVEL_MAX ;
 int HR222_LINE_PLAYBACK_LEVEL_MIN ;
 int PCXHR_LINE_CAPTURE_LEVEL_MAX ;
 int PCXHR_LINE_CAPTURE_LEVEL_MIN ;
 int PCXHR_LINE_PLAYBACK_LEVEL_MAX ;
 int PCXHR_LINE_PLAYBACK_LEVEL_MIN ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 struct snd_pcxhr* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int pcxhr_analog_vol_info(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_info *uinfo)
{
 struct snd_pcxhr *chip = snd_kcontrol_chip(kcontrol);

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 2;
 if (kcontrol->private_value == 0) {
     if (chip->mgr->is_hr_stereo) {
  uinfo->value.integer.min =
   HR222_LINE_PLAYBACK_LEVEL_MIN;
  uinfo->value.integer.max =
   HR222_LINE_PLAYBACK_LEVEL_MAX;
     } else {
  uinfo->value.integer.min =
   PCXHR_LINE_PLAYBACK_LEVEL_MIN;
  uinfo->value.integer.max =
   PCXHR_LINE_PLAYBACK_LEVEL_MAX;
     }
 } else {
     if (chip->mgr->is_hr_stereo) {
  uinfo->value.integer.min =
   HR222_LINE_CAPTURE_LEVEL_MIN;
  uinfo->value.integer.max =
   HR222_LINE_CAPTURE_LEVEL_MAX;
     } else {
  uinfo->value.integer.min =
   PCXHR_LINE_CAPTURE_LEVEL_MIN;
  uinfo->value.integer.max =
   PCXHR_LINE_CAPTURE_LEVEL_MAX;
     }
 }
 return 0;
}
