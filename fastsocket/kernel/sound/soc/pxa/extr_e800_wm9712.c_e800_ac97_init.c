
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int audio_map ;
 int e800_dapm_widgets ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;

__attribute__((used)) static int e800_ac97_init(struct snd_soc_codec *codec)
{
 snd_soc_dapm_new_controls(codec, e800_dapm_widgets,
     ARRAY_SIZE(e800_dapm_widgets));

 snd_soc_dapm_add_routes(codec, audio_map, ARRAY_SIZE(audio_map));
 snd_soc_dapm_sync(codec);

 return 0;
}
