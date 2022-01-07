
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {scalar_t__ ess_flag; scalar_t__ ics_flag; struct snd_card* card; } ;
struct snd_card {char* mixername; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_component_add (struct snd_card*,char*) ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,struct snd_gus_card*) ;
 int * snd_gf1_controls ;
 int * snd_ics_controls ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

int snd_gf1_new_mixer(struct snd_gus_card * gus)
{
 struct snd_card *card;
 unsigned int idx, max;
 int err;

 if (snd_BUG_ON(!gus))
  return -EINVAL;
 card = gus->card;
 if (snd_BUG_ON(!card))
  return -EINVAL;

 if (gus->ics_flag)
  snd_component_add(card, "ICS2101");
 if (card->mixername[0] == '\0') {
  strcpy(card->mixername, gus->ics_flag ? "GF1,ICS2101" : "GF1");
 } else {
  if (gus->ics_flag)
   strcat(card->mixername, ",ICS2101");
  strcat(card->mixername, ",GF1");
 }

 if (!gus->ics_flag) {
  max = gus->ess_flag ? 1 : ARRAY_SIZE(snd_gf1_controls);
  for (idx = 0; idx < max; idx++) {
   if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_gf1_controls[idx], gus))) < 0)
    return err;
  }
 } else {
  for (idx = 0; idx < ARRAY_SIZE(snd_ics_controls); idx++) {
   if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_ics_controls[idx], gus))) < 0)
    return err;
  }
 }
 return 0;
}
