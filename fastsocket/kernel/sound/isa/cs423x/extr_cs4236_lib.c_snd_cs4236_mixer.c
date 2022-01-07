
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {int hardware; struct snd_card* card; } ;
struct snd_kcontrol_new {int dummy; } ;
struct snd_card {int mixername; } ;


 unsigned int ARRAY_SIZE (struct snd_kcontrol_new*) ;
 int EINVAL ;




 scalar_t__ snd_BUG_ON (int) ;
 struct snd_kcontrol_new* snd_cs4235_controls ;
 struct snd_kcontrol_new* snd_cs4236_3d_controls_cs4235 ;
 struct snd_kcontrol_new* snd_cs4236_3d_controls_cs4237 ;
 struct snd_kcontrol_new* snd_cs4236_3d_controls_cs4238 ;
 struct snd_kcontrol_new* snd_cs4236_controls ;
 struct snd_kcontrol_new* snd_cs4236_iec958_controls ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct snd_wss*) ;
 int snd_wss_chip_id (struct snd_wss*) ;
 int strcpy (int ,int ) ;

int snd_cs4236_mixer(struct snd_wss *chip)
{
 struct snd_card *card;
 unsigned int idx, count;
 int err;
 struct snd_kcontrol_new *kcontrol;

 if (snd_BUG_ON(!chip || !chip->card))
  return -EINVAL;
 card = chip->card;
 strcpy(card->mixername, snd_wss_chip_id(chip));

 if (chip->hardware == 131 ||
     chip->hardware == 128) {
  for (idx = 0; idx < ARRAY_SIZE(snd_cs4235_controls); idx++) {
   if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_cs4235_controls[idx], chip))) < 0)
    return err;
  }
 } else {
  for (idx = 0; idx < ARRAY_SIZE(snd_cs4236_controls); idx++) {
   if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_cs4236_controls[idx], chip))) < 0)
    return err;
  }
 }
 switch (chip->hardware) {
 case 131:
 case 128:
  count = ARRAY_SIZE(snd_cs4236_3d_controls_cs4235);
  kcontrol = snd_cs4236_3d_controls_cs4235;
  break;
 case 130:
  count = ARRAY_SIZE(snd_cs4236_3d_controls_cs4237);
  kcontrol = snd_cs4236_3d_controls_cs4237;
  break;
 case 129:
  count = ARRAY_SIZE(snd_cs4236_3d_controls_cs4238);
  kcontrol = snd_cs4236_3d_controls_cs4238;
  break;
 default:
  count = 0;
  kcontrol = ((void*)0);
 }
 for (idx = 0; idx < count; idx++, kcontrol++) {
  if ((err = snd_ctl_add(card, snd_ctl_new1(kcontrol, chip))) < 0)
   return err;
 }
 if (chip->hardware == 130 ||
     chip->hardware == 129) {
  for (idx = 0; idx < ARRAY_SIZE(snd_cs4236_iec958_controls); idx++) {
   if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_cs4236_iec958_controls[idx], chip))) < 0)
    return err;
  }
 }
 return 0;
}
