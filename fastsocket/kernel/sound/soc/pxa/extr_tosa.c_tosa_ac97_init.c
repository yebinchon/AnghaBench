
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int audio_map ;
 int snd_soc_add_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_nc_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;
 int tosa_controls ;
 int tosa_dapm_widgets ;

__attribute__((used)) static int tosa_ac97_init(struct snd_soc_codec *codec)
{
 int err;

 snd_soc_dapm_nc_pin(codec, "OUT3");
 snd_soc_dapm_nc_pin(codec, "MONOOUT");


 err = snd_soc_add_controls(codec, tosa_controls,
    ARRAY_SIZE(tosa_controls));
 if (err < 0)
  return err;


 snd_soc_dapm_new_controls(codec, tosa_dapm_widgets,
      ARRAY_SIZE(tosa_dapm_widgets));


 snd_soc_dapm_add_routes(codec, audio_map, ARRAY_SIZE(audio_map));

 snd_soc_dapm_sync(codec);
 return 0;
}
