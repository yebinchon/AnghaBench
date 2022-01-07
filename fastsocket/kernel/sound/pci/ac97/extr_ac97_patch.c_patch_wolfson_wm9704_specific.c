
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {TYPE_1__* bus; } ;
struct TYPE_2__ {int card; } ;


 int AC97_WM9704_TEST ;
 int ARRAY_SIZE (int *) ;
 int snd_ac97_cnew (int *,struct snd_ac97*) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;
 int snd_ctl_add (int ,int ) ;
 int * wm9704_snd_ac97_controls ;

__attribute__((used)) static int patch_wolfson_wm9704_specific(struct snd_ac97 * ac97)
{
 int err, i;
 for (i = 0; i < ARRAY_SIZE(wm9704_snd_ac97_controls); i++) {
  if ((err = snd_ctl_add(ac97->bus->card, snd_ac97_cnew(&wm9704_snd_ac97_controls[i], ac97))) < 0)
   return err;
 }

 snd_ac97_write_cache(ac97, AC97_WM9704_TEST, 0x0200);
 return 0;
}
