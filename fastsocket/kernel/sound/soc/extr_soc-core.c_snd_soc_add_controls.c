
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int name; int dev; struct snd_card* card; } ;
struct snd_kcontrol_new {int name; } ;
struct snd_card {int dummy; } ;


 int dev_err (int ,char*,int ,int ) ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_soc_cnew (struct snd_kcontrol_new const*,struct snd_soc_codec*,int *) ;

int snd_soc_add_controls(struct snd_soc_codec *codec,
 const struct snd_kcontrol_new *controls, int num_controls)
{
 struct snd_card *card = codec->card;
 int err, i;

 for (i = 0; i < num_controls; i++) {
  const struct snd_kcontrol_new *control = &controls[i];
  err = snd_ctl_add(card, snd_soc_cnew(control, codec, ((void*)0)));
  if (err < 0) {
   dev_err(codec->dev, "%s: Failed to add %s\n",
    codec->name, control->name);
   return err;
  }
 }

 return 0;
}
