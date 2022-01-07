
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int audio_map ;
 int snd_soc_add_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_nc_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;
 int wm8731_dapm_widgets ;
 int wm8731_poodle_controls ;

__attribute__((used)) static int poodle_wm8731_init(struct snd_soc_codec *codec)
{
 int err;

 snd_soc_dapm_nc_pin(codec, "LLINEIN");
 snd_soc_dapm_nc_pin(codec, "RLINEIN");
 snd_soc_dapm_enable_pin(codec, "MICIN");


 err = snd_soc_add_controls(codec, wm8731_poodle_controls,
    ARRAY_SIZE(wm8731_poodle_controls));
 if (err < 0)
  return err;


 snd_soc_dapm_new_controls(codec, wm8731_dapm_widgets,
      ARRAY_SIZE(wm8731_dapm_widgets));


 snd_soc_dapm_add_routes(codec, audio_map, ARRAY_SIZE(audio_map));

 snd_soc_dapm_sync(codec);
 return 0;
}
