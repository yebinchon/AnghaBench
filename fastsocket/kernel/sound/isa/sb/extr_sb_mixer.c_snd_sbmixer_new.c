
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int hardware; struct snd_card* card; } ;
struct snd_card {int mixername; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_als4000_controls ;
 int snd_als4000_init_values ;
 int snd_dt019x_controls ;
 int snd_dt019x_init_values ;
 int snd_sb16_controls ;
 int snd_sb16_init_values ;
 int snd_sb20_controls ;
 int snd_sb20_init_values ;
 int snd_sbmixer_init (struct snd_sb*,int ,int ,int ,int ,char*) ;
 int snd_sbpro_controls ;
 int snd_sbpro_init_values ;
 int strcpy (int ,char*) ;

int snd_sbmixer_new(struct snd_sb *chip)
{
 struct snd_card *card;
 int err;

 if (snd_BUG_ON(!chip || !chip->card))
  return -EINVAL;

 card = chip->card;

 switch (chip->hardware) {
 case 136:
  return 0;
 case 134:
 case 133:
  if ((err = snd_sbmixer_init(chip,
         snd_sb20_controls,
         ARRAY_SIZE(snd_sb20_controls),
         snd_sb20_init_values,
         ARRAY_SIZE(snd_sb20_init_values),
         "CTL1335")) < 0)
   return err;
  break;
 case 128:
  if ((err = snd_sbmixer_init(chip,
         snd_sbpro_controls,
         ARRAY_SIZE(snd_sbpro_controls),
         snd_sbpro_init_values,
         ARRAY_SIZE(snd_sbpro_init_values),
         "CTL1345")) < 0)
   return err;
  break;
 case 135:
 case 132:
 case 130:
  if ((err = snd_sbmixer_init(chip,
         snd_sb16_controls,
         ARRAY_SIZE(snd_sb16_controls),
         snd_sb16_init_values,
         ARRAY_SIZE(snd_sb16_init_values),
         "CTL1745")) < 0)
   return err;
  break;
 case 131:
  if ((err = snd_sbmixer_init(chip,
         snd_als4000_controls,
         ARRAY_SIZE(snd_als4000_controls),
         snd_als4000_init_values,
         ARRAY_SIZE(snd_als4000_init_values),
         "ALS4000")) < 0)
   return err;
  break;
 case 129:
  if ((err = snd_sbmixer_init(chip,
         snd_dt019x_controls,
         ARRAY_SIZE(snd_dt019x_controls),
         snd_dt019x_init_values,
         ARRAY_SIZE(snd_dt019x_init_values),
         "DT019X")) < 0)
  break;
 default:
  strcpy(card->mixername, "???");
 }
 return 0;
}
