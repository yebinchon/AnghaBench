
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {TYPE_1__* bus; } ;
struct TYPE_2__ {int card; } ;


 int ARRAY_SIZE (int *) ;
 int snd_ac97_cnew (int *,struct snd_ac97*) ;
 int snd_ctl_add (int ,int ) ;
 int * wm13_snd_ac97_controls_3d ;

__attribute__((used)) static int patch_wolfson_wm9713_3d (struct snd_ac97 * ac97)
{
 int err, i;

 for (i = 0; i < ARRAY_SIZE(wm13_snd_ac97_controls_3d); i++) {
  if ((err = snd_ctl_add(ac97->bus->card, snd_ac97_cnew(&wm13_snd_ac97_controls_3d[i], ac97))) < 0)
   return err;
 }
 return 0;
}
