
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {unsigned short (* read ) (struct snd_soc_codec*,int ) ;int (* write ) (struct snd_soc_codec*,int ,unsigned short) ;} ;


 int AC97_3D_CONTROL ;
 int AC97_GPIO_CFG ;
 int ARRAY_AND_SIZE (int ) ;
 int audio_map ;
 int mioa701_dapm_widgets ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;
 unsigned short stub1 (struct snd_soc_codec*,int ) ;
 int stub2 (struct snd_soc_codec*,int ,unsigned short) ;
 unsigned short stub3 (struct snd_soc_codec*,int ) ;
 int stub4 (struct snd_soc_codec*,int ,unsigned short) ;

__attribute__((used)) static int mioa701_wm9713_init(struct snd_soc_codec *codec)
{
 unsigned short reg;


 snd_soc_dapm_new_controls(codec, ARRAY_AND_SIZE(mioa701_dapm_widgets));


 snd_soc_dapm_add_routes(codec, ARRAY_AND_SIZE(audio_map));


 reg = codec->read(codec, AC97_GPIO_CFG);
 codec->write(codec, AC97_GPIO_CFG, reg | 0x0100);


 reg = codec->read(codec, AC97_3D_CONTROL);
 codec->write(codec, AC97_3D_CONTROL, reg | 0xc000);

 snd_soc_dapm_enable_pin(codec, "Front Speaker");
 snd_soc_dapm_enable_pin(codec, "Rear Speaker");
 snd_soc_dapm_enable_pin(codec, "Front Mic");
 snd_soc_dapm_enable_pin(codec, "GSM Line In");
 snd_soc_dapm_enable_pin(codec, "GSM Line Out");
 snd_soc_dapm_sync(codec);

 return 0;
}
