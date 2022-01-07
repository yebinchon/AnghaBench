
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol_new {int dummy; } ;
struct snd_ac97 {TYPE_1__* bus; } ;
struct TYPE_2__ {int card; } ;


 int snd_ac97_cnew (struct snd_kcontrol_new const*,struct snd_ac97*) ;
 int snd_ctl_add (int ,int ) ;

__attribute__((used)) static int patch_build_controls(struct snd_ac97 * ac97, const struct snd_kcontrol_new *controls, int count)
{
 int idx, err;

 for (idx = 0; idx < count; idx++)
  if ((err = snd_ctl_add(ac97->bus->card, snd_ac97_cnew(&controls[idx], ac97))) < 0)
   return err;
 return 0;
}
