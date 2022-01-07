
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_dai {TYPE_3__* ops; } ;
struct snd_soc_codec {TYPE_1__* socdev; struct snd_soc_dai* dai; } ;
struct snd_soc_card {int dev; } ;
struct TYPE_6__ {scalar_t__ digital_mute; } ;
struct TYPE_5__ {int shutdown; int startup; } ;
struct TYPE_4__ {struct snd_soc_card* card; } ;


 int ARRAY_SIZE (int ) ;
 int N_V253 ;
 int SND_JACK_HEADSET ;
 int SND_SOC_BIAS_STANDBY ;
 int ams_delta_audio_controls ;
 int ams_delta_audio_map ;
 TYPE_3__ ams_delta_dai_ops ;
 int ams_delta_dapm_widgets ;
 scalar_t__ ams_delta_digital_mute ;
 int ams_delta_hook_switch ;
 int ams_delta_hook_switch_gpios ;
 TYPE_2__ ams_delta_ops ;
 int ams_delta_set_bias_level (struct snd_soc_card*,int ) ;
 int ams_delta_shutdown ;
 int ams_delta_startup ;
 int cx81801_ops ;
 int dev_warn (int ,char*) ;
 int snd_soc_add_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_codec*,int ,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;
 int snd_soc_jack_add_gpios (int *,int ,int ) ;
 int snd_soc_jack_new (struct snd_soc_card*,char*,int ,int *) ;
 int tty_register_ldisc (int ,int *) ;

__attribute__((used)) static int ams_delta_cx20442_init(struct snd_soc_codec *codec)
{
 struct snd_soc_dai *codec_dai = codec->dai;
 struct snd_soc_card *card = codec->socdev->card;
 int ret;



 if (!codec_dai->ops) {
  codec_dai->ops = &ams_delta_dai_ops;
 } else if (!codec_dai->ops->digital_mute) {
  codec_dai->ops->digital_mute = ams_delta_digital_mute;
 } else {
  ams_delta_ops.startup = ams_delta_startup;
  ams_delta_ops.shutdown = ams_delta_shutdown;
 }


 ams_delta_set_bias_level(card, SND_SOC_BIAS_STANDBY);



 ret = snd_soc_jack_new(card, "hook_switch",
    SND_JACK_HEADSET, &ams_delta_hook_switch);
 if (ret)
  dev_warn(card->dev,
    "Failed to allocate resources for hook switch, "
    "will continue without one.\n");
 else {
  ret = snd_soc_jack_add_gpios(&ams_delta_hook_switch,
     ARRAY_SIZE(ams_delta_hook_switch_gpios),
     ams_delta_hook_switch_gpios);
  if (ret)
   dev_warn(card->dev,
    "Failed to set up hook switch GPIO line, "
    "will continue with hook switch inactive.\n");
 }


 ret = tty_register_ldisc(N_V253, &cx81801_ops);
 if (ret) {
  dev_warn(card->dev,
    "Failed to register line discipline, "
    "will continue without any controls.\n");
  return 0;
 }


 ret = snd_soc_dapm_new_controls(codec, ams_delta_dapm_widgets,
     ARRAY_SIZE(ams_delta_dapm_widgets));
 if (ret) {
  dev_warn(card->dev,
    "Failed to register DAPM controls, "
    "will continue without any.\n");
  return 0;
 }

 ret = snd_soc_dapm_add_routes(codec, ams_delta_audio_map,
     ARRAY_SIZE(ams_delta_audio_map));
 if (ret) {
  dev_warn(card->dev,
    "Failed to set up DAPM routes, "
    "will continue with codec default map.\n");
  return 0;
 }


 snd_soc_dapm_disable_pin(codec, "Mouthpiece");
 snd_soc_dapm_enable_pin(codec, "Earpiece");
 snd_soc_dapm_enable_pin(codec, "Microphone");
 snd_soc_dapm_disable_pin(codec, "Speaker");
 snd_soc_dapm_disable_pin(codec, "AGCIN");
 snd_soc_dapm_disable_pin(codec, "AGCOUT");
 snd_soc_dapm_sync(codec);


 ret = snd_soc_add_controls(codec, ams_delta_audio_controls,
     ARRAY_SIZE(ams_delta_audio_controls));
 if (ret)
  dev_warn(card->dev,
    "Failed to register audio mode control, "
    "will continue without it.\n");

 return 0;
}
