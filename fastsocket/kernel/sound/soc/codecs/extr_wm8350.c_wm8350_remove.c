
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * jack; } ;
struct TYPE_5__ {int * jack; } ;
struct wm8350_data {TYPE_3__ hpr; TYPE_2__ hpl; } ;
struct wm8350 {int dummy; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int delayed_work; struct wm8350_data* private_data; struct wm8350* control_data; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {struct snd_soc_codec* codec; } ;


 int SND_SOC_BIAS_OFF ;
 int WM8350_CODEC_ENA ;
 int WM8350_IRQ_CODEC_JCK_DET_L ;
 int WM8350_IRQ_CODEC_JCK_DET_R ;
 int WM8350_JACK_DETECT ;
 int WM8350_JDL_ENA ;
 int WM8350_JDR_ENA ;
 int WM8350_POWER_MGMT_4 ;
 int WM8350_POWER_MGMT_5 ;
 int WM8350_TOCLK_ENA ;
 int cancel_delayed_work (int *) ;
 int flush_scheduled_work () ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int schedule_delayed_work (int *,int ) ;
 int wm8350_clear_bits (struct wm8350*,int ,int) ;
 int wm8350_free_irq (struct wm8350*,int ) ;
 int wm8350_mask_irq (struct wm8350*,int ) ;
 int wm8350_set_bias_level (struct snd_soc_codec*,int ) ;

__attribute__((used)) static int wm8350_remove(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_codec *codec = socdev->card->codec;
 struct wm8350 *wm8350 = codec->control_data;
 struct wm8350_data *priv = codec->private_data;
 int ret;

 wm8350_clear_bits(wm8350, WM8350_JACK_DETECT,
     WM8350_JDL_ENA | WM8350_JDR_ENA);
 wm8350_clear_bits(wm8350, WM8350_POWER_MGMT_4, WM8350_TOCLK_ENA);

 wm8350_mask_irq(wm8350, WM8350_IRQ_CODEC_JCK_DET_L);
 wm8350_mask_irq(wm8350, WM8350_IRQ_CODEC_JCK_DET_R);
 wm8350_free_irq(wm8350, WM8350_IRQ_CODEC_JCK_DET_L);
 wm8350_free_irq(wm8350, WM8350_IRQ_CODEC_JCK_DET_R);

 priv->hpl.jack = ((void*)0);
 priv->hpr.jack = ((void*)0);


 ret = cancel_delayed_work(&codec->delayed_work);



 if (ret) {
  schedule_delayed_work(&codec->delayed_work, 0);
  flush_scheduled_work();
 }

 wm8350_set_bias_level(codec, SND_SOC_BIAS_OFF);

 wm8350_clear_bits(wm8350, WM8350_POWER_MGMT_5, WM8350_CODEC_ENA);

 return 0;
}
