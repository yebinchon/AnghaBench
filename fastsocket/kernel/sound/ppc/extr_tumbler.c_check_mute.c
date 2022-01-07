
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {int card; } ;
struct snd_kcontrol {int id; } ;
struct pmac_gpio {int dummy; } ;


 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int check_audio_gpio (struct pmac_gpio*) ;
 int snd_ctl_notify (int ,int ,int *) ;
 int write_audio_gpio (struct pmac_gpio*,int) ;

__attribute__((used)) static void check_mute(struct snd_pmac *chip, struct pmac_gpio *gp, int val, int do_notify,
         struct snd_kcontrol *sw)
{
 if (check_audio_gpio(gp) != val) {
  write_audio_gpio(gp, val);
  if (do_notify)
   snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
           &sw->id);
 }
}
