
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;
struct rme96 {struct snd_kcontrol* spdif_ctl; } ;


 scalar_t__ RME96_HAS_ANALOG_OUT (struct rme96*) ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct rme96*) ;
 int * snd_rme96_controls ;

__attribute__((used)) static int
snd_rme96_create_switches(struct snd_card *card,
     struct rme96 *rme96)
{
 int idx, err;
 struct snd_kcontrol *kctl;

 for (idx = 0; idx < 7; idx++) {
  if ((err = snd_ctl_add(card, kctl = snd_ctl_new1(&snd_rme96_controls[idx], rme96))) < 0)
   return err;
  if (idx == 1)
   rme96->spdif_ctl = kctl;
 }

 if (RME96_HAS_ANALOG_OUT(rme96)) {
  for (idx = 7; idx < 10; idx++)
   if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_rme96_controls[idx], rme96))) < 0)
    return err;
 }

 return 0;
}
