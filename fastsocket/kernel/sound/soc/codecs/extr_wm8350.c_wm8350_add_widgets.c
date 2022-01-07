
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int audio_map ;
 int dev_err (int ,char*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_new_widgets (struct snd_soc_codec*) ;
 int wm8350_dapm_widgets ;

__attribute__((used)) static int wm8350_add_widgets(struct snd_soc_codec *codec)
{
 int ret;

 ret = snd_soc_dapm_new_controls(codec,
     wm8350_dapm_widgets,
     ARRAY_SIZE(wm8350_dapm_widgets));
 if (ret != 0) {
  dev_err(codec->dev, "dapm control register failed\n");
  return ret;
 }


 ret = snd_soc_dapm_add_routes(codec, audio_map, ARRAY_SIZE(audio_map));
 if (ret != 0) {
  dev_err(codec->dev, "DAPM route register failed\n");
  return ret;
 }

 return snd_soc_dapm_new_widgets(codec);
}
