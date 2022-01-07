
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int private_value; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int ac97_enum_text_info (struct snd_kcontrol*,struct snd_ctl_elem_info*,char const**,int ) ;

__attribute__((used)) static int ac97_channel_mode_info(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 static const char *texts[] = { "2ch", "4ch", "6ch", "8ch" };
 return ac97_enum_text_info(kcontrol, uinfo, texts,
  kcontrol->private_value);
}
