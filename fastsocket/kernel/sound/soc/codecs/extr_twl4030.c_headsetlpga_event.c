
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twl4030_priv {int hsl_enabled; int hsr_enabled; } ;
struct snd_soc_dapm_widget {TYPE_1__* codec; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {struct twl4030_priv* private_data; } ;




 int headset_ramp (TYPE_1__*,int) ;

__attribute__((used)) static int headsetlpga_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kcontrol, int event)
{
 struct twl4030_priv *twl4030 = w->codec->private_data;

 switch (event) {
 case 128:

  if (!twl4030->hsr_enabled)
   headset_ramp(w->codec, 1);

  twl4030->hsl_enabled = 1;
  break;
 case 129:

  if (!twl4030->hsr_enabled)
   headset_ramp(w->codec, 0);

  twl4030->hsl_enabled = 0;
  break;
 }
 return 0;
}
