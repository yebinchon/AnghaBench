
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int cx20442_audio_map ;
 int cx20442_dapm_widgets ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_new_widgets (struct snd_soc_codec*) ;

__attribute__((used)) static int cx20442_add_widgets(struct snd_soc_codec *codec)
{
 snd_soc_dapm_new_controls(codec, cx20442_dapm_widgets,
      ARRAY_SIZE(cx20442_dapm_widgets));

 snd_soc_dapm_add_routes(codec, cx20442_audio_map,
    ARRAY_SIZE(cx20442_audio_map));

 snd_soc_dapm_new_widgets(codec);
 return 0;
}
