
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_es1688 {struct snd_card* card; } ;
struct snd_card {int mixername; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int EINVAL ;
 unsigned int ES1688_INIT_TABLE_SIZE ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,struct snd_es1688*) ;
 int snd_es1688_chip_id (struct snd_es1688*) ;
 int * snd_es1688_controls ;
 unsigned char** snd_es1688_init_table ;
 int snd_es1688_mixer_write (struct snd_es1688*,unsigned char,unsigned char) ;
 int snd_es1688_write (struct snd_es1688*,unsigned char,unsigned char) ;
 int strcpy (int ,int ) ;

int snd_es1688_mixer(struct snd_es1688 *chip)
{
 struct snd_card *card;
 unsigned int idx;
 int err;
 unsigned char reg, val;

 if (snd_BUG_ON(!chip || !chip->card))
  return -EINVAL;

 card = chip->card;

 strcpy(card->mixername, snd_es1688_chip_id(chip));

 for (idx = 0; idx < ARRAY_SIZE(snd_es1688_controls); idx++) {
  if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_es1688_controls[idx], chip))) < 0)
   return err;
 }
 for (idx = 0; idx < ES1688_INIT_TABLE_SIZE; idx++) {
  reg = snd_es1688_init_table[idx][0];
  val = snd_es1688_init_table[idx][1];
  if (reg < 0xa0)
   snd_es1688_mixer_write(chip, reg, val);
  else
   snd_es1688_write(chip, reg, val);
 }
 return 0;
}
