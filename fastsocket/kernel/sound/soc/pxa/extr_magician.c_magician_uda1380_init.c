
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
 int uda1380_dapm_widgets ;
 int uda1380_magician_controls ;

__attribute__((used)) static int magician_uda1380_init(struct snd_soc_codec *codec)
{
 int err;


 snd_soc_dapm_nc_pin(codec, "VOUTLHP");
 snd_soc_dapm_nc_pin(codec, "VOUTRHP");


 snd_soc_dapm_nc_pin(codec, "VINL");
 snd_soc_dapm_nc_pin(codec, "VINR");


 err = snd_soc_add_controls(codec, uda1380_magician_controls,
    ARRAY_SIZE(uda1380_magician_controls));
 if (err < 0)
  return err;


 snd_soc_dapm_new_controls(codec, uda1380_dapm_widgets,
      ARRAY_SIZE(uda1380_dapm_widgets));


 snd_soc_dapm_add_routes(codec, audio_map, ARRAY_SIZE(audio_map));

 snd_soc_dapm_sync(codec);
 return 0;
}
