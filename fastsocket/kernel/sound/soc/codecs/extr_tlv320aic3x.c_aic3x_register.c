
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dev; } ;


 struct snd_soc_codec* aic3x_codec ;
 int aic3x_dai ;
 int aic3x_init (struct snd_soc_codec*) ;
 int dev_err (int ,char*) ;
 int snd_soc_register_codec (struct snd_soc_codec*) ;
 int snd_soc_register_dai (int *) ;
 int snd_soc_unregister_codec (struct snd_soc_codec*) ;

__attribute__((used)) static int aic3x_register(struct snd_soc_codec *codec)
{
 int ret;

 ret = aic3x_init(codec);
 if (ret < 0) {
  dev_err(codec->dev, "Failed to initialise device\n");
  return ret;
 }

 aic3x_codec = codec;

 ret = snd_soc_register_codec(codec);
 if (ret) {
  dev_err(codec->dev, "Failed to register codec\n");
  return ret;
 }

 ret = snd_soc_register_dai(&aic3x_dai);
 if (ret) {
  dev_err(codec->dev, "Failed to register dai\n");
  snd_soc_unregister_codec(codec);
  return ret;
 }

 return 0;
}
