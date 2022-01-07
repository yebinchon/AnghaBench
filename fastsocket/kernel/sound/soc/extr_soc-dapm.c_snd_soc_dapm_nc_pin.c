
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int snd_soc_dapm_set_pin (struct snd_soc_codec*,char const*,int ) ;

int snd_soc_dapm_nc_pin(struct snd_soc_codec *codec, const char *pin)
{
 return snd_soc_dapm_set_pin(codec, pin, 0);
}
