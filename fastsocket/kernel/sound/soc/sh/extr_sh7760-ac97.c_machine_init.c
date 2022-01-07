
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int snd_soc_dapm_sync (struct snd_soc_codec*) ;

__attribute__((used)) static int machine_init(struct snd_soc_codec *codec)
{
 snd_soc_dapm_sync(codec);
 return 0;
}
