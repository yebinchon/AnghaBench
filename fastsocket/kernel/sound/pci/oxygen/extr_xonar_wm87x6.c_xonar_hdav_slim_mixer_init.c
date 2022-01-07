
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct oxygen {int card; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int add_lc_controls (struct oxygen*) ;
 int * hdav_slim_controls ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct oxygen*) ;

__attribute__((used)) static int xonar_hdav_slim_mixer_init(struct oxygen *chip)
{
 unsigned int i;
 struct snd_kcontrol *ctl;
 int err;

 for (i = 0; i < ARRAY_SIZE(hdav_slim_controls); ++i) {
  ctl = snd_ctl_new1(&hdav_slim_controls[i], chip);
  if (!ctl)
   return -ENOMEM;
  err = snd_ctl_add(chip->card, ctl);
  if (err < 0)
   return err;
 }

 return add_lc_controls(chip);
}
