
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int omap3pandora_in_dapm_widgets ;
 int omap3pandora_in_map ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_nc_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;

__attribute__((used)) static int omap3pandora_in_init(struct snd_soc_codec *codec)
{
 int ret;


 snd_soc_dapm_nc_pin(codec, "HSMIC");
 snd_soc_dapm_nc_pin(codec, "CARKITMIC");
 snd_soc_dapm_nc_pin(codec, "DIGIMIC0");
 snd_soc_dapm_nc_pin(codec, "DIGIMIC1");

 ret = snd_soc_dapm_new_controls(codec, omap3pandora_in_dapm_widgets,
    ARRAY_SIZE(omap3pandora_in_dapm_widgets));
 if (ret < 0)
  return ret;

 snd_soc_dapm_add_routes(codec, omap3pandora_in_map,
  ARRAY_SIZE(omap3pandora_in_map));

 return snd_soc_dapm_sync(codec);
}
