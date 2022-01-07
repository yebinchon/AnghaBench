
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {int card; } ;
struct snd_kcontrol_new {int dummy; } ;


 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct snd_pmac*) ;

__attribute__((used)) static int build_mixers(struct snd_pmac *chip, int nums,
   struct snd_kcontrol_new *mixers)
{
 int i, err;

 for (i = 0; i < nums; i++) {
  err = snd_ctl_add(chip->card, snd_ctl_new1(&mixers[i], chip));
  if (err < 0)
   return err;
 }
 return 0;
}
