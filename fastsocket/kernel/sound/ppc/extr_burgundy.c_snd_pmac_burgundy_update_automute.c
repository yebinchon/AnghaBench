
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pmac {TYPE_3__* hp_detect_ctl; int card; TYPE_2__* speaker_sw_ctl; TYPE_1__* master_sw_ctl; scalar_t__ auto_mute; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_4__ {int id; } ;


 int BURGUNDY_HP_LEFT ;
 int BURGUNDY_HP_RIGHT ;
 int BURGUNDY_OUTPUT_INTERN ;
 int BURGUNDY_OUTPUT_LEFT ;
 int BURGUNDY_OUTPUT_RIGHT ;
 int MASK_ADDR_BURGUNDY_MORE_OUTPUTENABLES ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int machine_is_compatible (char*) ;
 int snd_ctl_notify (int ,int ,int *) ;
 scalar_t__ snd_pmac_burgundy_detect_headphone (struct snd_pmac*) ;
 int snd_pmac_burgundy_rcb (struct snd_pmac*,int ) ;
 int snd_pmac_burgundy_wcb (struct snd_pmac*,int ,int) ;

__attribute__((used)) static void snd_pmac_burgundy_update_automute(struct snd_pmac *chip, int do_notify)
{
 if (chip->auto_mute) {
  int imac = machine_is_compatible("iMac");
  int reg, oreg;
  reg = oreg = snd_pmac_burgundy_rcb(chip,
    MASK_ADDR_BURGUNDY_MORE_OUTPUTENABLES);
  reg &= imac ? ~(BURGUNDY_OUTPUT_LEFT | BURGUNDY_OUTPUT_RIGHT
    | BURGUNDY_HP_LEFT | BURGUNDY_HP_RIGHT)
   : ~(BURGUNDY_OUTPUT_LEFT | BURGUNDY_OUTPUT_RIGHT
    | BURGUNDY_OUTPUT_INTERN);
  if (snd_pmac_burgundy_detect_headphone(chip))
   reg |= imac ? (BURGUNDY_HP_LEFT | BURGUNDY_HP_RIGHT)
    : (BURGUNDY_OUTPUT_LEFT
     | BURGUNDY_OUTPUT_RIGHT);
  else
   reg |= imac ? (BURGUNDY_OUTPUT_LEFT
     | BURGUNDY_OUTPUT_RIGHT)
    : (BURGUNDY_OUTPUT_INTERN);
  if (do_notify && reg == oreg)
   return;
  snd_pmac_burgundy_wcb(chip,
    MASK_ADDR_BURGUNDY_MORE_OUTPUTENABLES, reg);
  if (do_notify) {
   snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
           &chip->master_sw_ctl->id);
   snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
           &chip->speaker_sw_ctl->id);
   snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
           &chip->hp_detect_ctl->id);
  }
 }
}
