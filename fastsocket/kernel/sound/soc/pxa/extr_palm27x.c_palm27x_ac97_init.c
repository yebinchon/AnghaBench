
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int SND_JACK_HEADPHONE ;
 int audio_map ;
 int hs_jack ;
 int hs_jack_gpios ;
 int hs_jack_pins ;
 scalar_t__ machine_is_palmld () ;
 int palm27x_asoc ;
 int palm27x_dapm_widgets ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_nc_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;
 int snd_soc_jack_add_gpios (int *,int ,int ) ;
 int snd_soc_jack_add_pins (int *,int ,int ) ;
 int snd_soc_jack_new (int *,char*,int ,int *) ;

__attribute__((used)) static int palm27x_ac97_init(struct snd_soc_codec *codec)
{
 int err;


 err = snd_soc_dapm_new_controls(codec, palm27x_dapm_widgets,
    ARRAY_SIZE(palm27x_dapm_widgets));
 if (err)
  return err;


 err = snd_soc_dapm_add_routes(codec, audio_map, ARRAY_SIZE(audio_map));
 if (err)
  return err;


 if (machine_is_palmld())
  snd_soc_dapm_enable_pin(codec, "MIC1");
 snd_soc_dapm_enable_pin(codec, "HPOUTL");
 snd_soc_dapm_enable_pin(codec, "HPOUTR");
 snd_soc_dapm_enable_pin(codec, "LOUT2");
 snd_soc_dapm_enable_pin(codec, "ROUT2");


 snd_soc_dapm_nc_pin(codec, "OUT3");
 snd_soc_dapm_nc_pin(codec, "MONOOUT");
 snd_soc_dapm_nc_pin(codec, "LINEINL");
 snd_soc_dapm_nc_pin(codec, "LINEINR");
 snd_soc_dapm_nc_pin(codec, "PCBEEP");
 snd_soc_dapm_nc_pin(codec, "PHONE");
 snd_soc_dapm_nc_pin(codec, "MIC2");

 err = snd_soc_dapm_sync(codec);
 if (err)
  return err;


 err = snd_soc_jack_new(&palm27x_asoc, "Headphone Jack",
    SND_JACK_HEADPHONE, &hs_jack);
 if (err)
  return err;

 err = snd_soc_jack_add_pins(&hs_jack, ARRAY_SIZE(hs_jack_pins),
    hs_jack_pins);
 if (err)
  return err;

 err = snd_soc_jack_add_gpios(&hs_jack, ARRAY_SIZE(hs_jack_gpios),
    hs_jack_gpios);

 return err;
}
