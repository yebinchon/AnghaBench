
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct snd_pmac {scalar_t__ model; TYPE_2__* drc_sw_ctl; int card; TYPE_1__* hp_detect_ctl; int lineout_sw_ctl; int master_sw_ctl; int speaker_sw_ctl; struct pmac_tumbler* mixer_data; } ;
struct TYPE_6__ {scalar_t__ addr; } ;
struct pmac_tumbler {int drc_enable; scalar_t__ auto_mute_notify; TYPE_3__ line_mute; TYPE_3__ hp_mute; scalar_t__ anded_reset; TYPE_3__ amp_mute; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_4__ {int id; } ;


 int DBG (char*,int,int) ;
 scalar_t__ PMAC_TUMBLER ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int check_mute (struct snd_pmac*,TYPE_3__*,int,scalar_t__,int ) ;
 struct snd_pmac* device_change_chip ;
 int msleep (int) ;
 int snapper_set_drc (struct pmac_tumbler*) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_notify (int ,int ,int *) ;
 int tumbler_detect_headphone (struct snd_pmac*) ;
 int tumbler_detect_lineout (struct snd_pmac*) ;
 int tumbler_set_drc (struct pmac_tumbler*) ;
 int tumbler_set_master_volume (struct pmac_tumbler*) ;

__attribute__((used)) static void device_change_handler(struct work_struct *work)
{
 struct snd_pmac *chip = device_change_chip;
 struct pmac_tumbler *mix;
 int headphone, lineout;

 if (!chip)
  return;

 mix = chip->mixer_data;
 if (snd_BUG_ON(!mix))
  return;

 headphone = tumbler_detect_headphone(chip);
 lineout = tumbler_detect_lineout(chip);

 DBG("headphone: %d, lineout: %d\n", headphone, lineout);

 if (headphone || lineout) {

  if (headphone)
   check_mute(chip, &mix->hp_mute, 0, mix->auto_mute_notify,
       chip->master_sw_ctl);
  if (lineout && mix->line_mute.addr != 0)
   check_mute(chip, &mix->line_mute, 0, mix->auto_mute_notify,
       chip->lineout_sw_ctl);
  if (mix->anded_reset)
   msleep(10);
  check_mute(chip, &mix->amp_mute, 1, mix->auto_mute_notify,
      chip->speaker_sw_ctl);
 } else {

  check_mute(chip, &mix->amp_mute, 0, mix->auto_mute_notify,
      chip->speaker_sw_ctl);
  if (mix->anded_reset)
   msleep(10);
  check_mute(chip, &mix->hp_mute, 1, mix->auto_mute_notify,
      chip->master_sw_ctl);
  if (mix->line_mute.addr != 0)
   check_mute(chip, &mix->line_mute, 1, mix->auto_mute_notify,
       chip->lineout_sw_ctl);
 }
 if (mix->auto_mute_notify)
  snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
           &chip->hp_detect_ctl->id);
 tumbler_set_master_volume(mix);
}
