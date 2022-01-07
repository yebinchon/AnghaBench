
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl4 {struct snd_card* card; } ;
struct snd_card {int mixername; } ;


 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,struct snd_opl4*) ;
 int * snd_opl4_controls ;
 int strcat (int ,char*) ;

int snd_opl4_create_mixer(struct snd_opl4 *opl4)
{
 struct snd_card *card = opl4->card;
 int i, err;

 strcat(card->mixername, ",OPL4");

 for (i = 0; i < 2; ++i) {
  err = snd_ctl_add(card, snd_ctl_new1(&snd_opl4_controls[i], opl4));
  if (err < 0)
   return err;
 }
 return 0;
}
