
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_enum {scalar_t__ shift_l; } ;
struct snd_soc_dapm_widget {int codec; TYPE_1__* kcontrols; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {scalar_t__ private_value; } ;


 unsigned char TWL4030_MICBIAS1_CTL ;
 unsigned char TWL4030_MICBIAS2_CTL ;
 int TWL4030_REG_ADCMICSEL ;
 int TWL4030_REG_MICBIAS_CTL ;
 unsigned char TWL4030_TX1IN_SEL ;
 unsigned char TWL4030_TX2IN_SEL ;
 unsigned char twl4030_read_reg_cache (int ,int ) ;
 int twl4030_write (int ,int ,unsigned char) ;

__attribute__((used)) static int micpath_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct soc_enum *e = (struct soc_enum *)w->kcontrols->private_value;
 unsigned char adcmicsel, micbias_ctl;

 adcmicsel = twl4030_read_reg_cache(w->codec, TWL4030_REG_ADCMICSEL);
 micbias_ctl = twl4030_read_reg_cache(w->codec, TWL4030_REG_MICBIAS_CTL);



 if (e->shift_l) {

  if (adcmicsel & TWL4030_TX2IN_SEL)
   micbias_ctl |= TWL4030_MICBIAS2_CTL;
  else
   micbias_ctl &= ~TWL4030_MICBIAS2_CTL;
 } else {

  if (adcmicsel & TWL4030_TX1IN_SEL)
   micbias_ctl |= TWL4030_MICBIAS1_CTL;
  else
   micbias_ctl &= ~TWL4030_MICBIAS1_CTL;
 }

 twl4030_write(w->codec, TWL4030_REG_MICBIAS_CTL, micbias_ctl);

 return 0;
}
