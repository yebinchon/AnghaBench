
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int report; struct snd_soc_jack* jack; } ;
struct TYPE_3__ {int report; struct snd_soc_jack* jack; } ;
struct wm8350_data {TYPE_2__ hpr; TYPE_1__ hpl; } ;
struct wm8350 {int dummy; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_codec {struct wm8350* control_data; struct wm8350_data* private_data; } ;
typedef enum wm8350_jack { ____Placeholder_wm8350_jack } wm8350_jack ;


 int EINVAL ;
 int WM8350_IRQ_CODEC_JCK_DET_L ;
 int WM8350_IRQ_CODEC_JCK_DET_R ;
 int WM8350_JACK_DETECT ;

 int WM8350_JDL_ENA ;

 int WM8350_JDR_ENA ;
 int WM8350_POWER_MGMT_4 ;
 int WM8350_TOCLK_ENA ;
 int wm8350_hp_jack_handler (struct wm8350*,int,struct wm8350_data*) ;
 int wm8350_set_bits (struct wm8350*,int ,int) ;
 int wm8350_unmask_irq (struct wm8350*,int) ;

int wm8350_hp_jack_detect(struct snd_soc_codec *codec, enum wm8350_jack which,
     struct snd_soc_jack *jack, int report)
{
 struct wm8350_data *priv = codec->private_data;
 struct wm8350 *wm8350 = codec->control_data;
 int irq;
 int ena;

 switch (which) {
 case 129:
  priv->hpl.jack = jack;
  priv->hpl.report = report;
  irq = WM8350_IRQ_CODEC_JCK_DET_L;
  ena = WM8350_JDL_ENA;
  break;

 case 128:
  priv->hpr.jack = jack;
  priv->hpr.report = report;
  irq = WM8350_IRQ_CODEC_JCK_DET_R;
  ena = WM8350_JDR_ENA;
  break;

 default:
  return -EINVAL;
 }

 wm8350_set_bits(wm8350, WM8350_POWER_MGMT_4, WM8350_TOCLK_ENA);
 wm8350_set_bits(wm8350, WM8350_JACK_DETECT, ena);


 wm8350_hp_jack_handler(wm8350, irq, priv);

 wm8350_unmask_irq(wm8350, irq);

 return 0;
}
