
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dapm_widget {int reg; int shift; struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int BUG () ;
 int EINVAL ;
 int SND_SOC_DAPM_POST_PMU ;
 int SND_SOC_DAPM_PRE_PMD ;
 int SND_SOC_DAPM_PRE_PMU ;
 int WM8903_ANALOGUE_HP_0 ;
 int WM8903_ANALOGUE_LINEOUT_0 ;
 int WM8903_DC_SERVO_0 ;
 int WM8903_OUTPUT_IN ;
 int WM8903_OUTPUT_INT ;
 int WM8903_OUTPUT_OUT ;
 int WM8903_OUTPUT_SHORT ;


 int snd_soc_read (struct snd_soc_codec*,int) ;
 int snd_soc_write (struct snd_soc_codec*,int,int) ;

__attribute__((used)) static int wm8903_output_event(struct snd_soc_dapm_widget *w,
          struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_codec *codec = w->codec;
 u16 val;
 u16 reg;
 u16 dcs_reg;
 u16 dcs_bit;
 int shift;

 switch (w->reg) {
 case 129:
  reg = WM8903_ANALOGUE_HP_0;
  dcs_bit = 0 + w->shift;
  break;
 case 128:
  reg = WM8903_ANALOGUE_LINEOUT_0;
  dcs_bit = 2 + w->shift;
  break;
 default:
  BUG();
  return -EINVAL;
 }

 switch (w->shift) {
 case 0:
  shift = 0;
  break;
 case 1:
  shift = 4;
  break;
 default:
  BUG();
  return -EINVAL;
 }

 if (event & SND_SOC_DAPM_PRE_PMU) {
  val = snd_soc_read(codec, reg);


  val &= ~(WM8903_OUTPUT_SHORT << shift);
  snd_soc_write(codec, reg, val);
 }

 if (event & SND_SOC_DAPM_POST_PMU) {
  val = snd_soc_read(codec, reg);

  val |= (WM8903_OUTPUT_IN << shift);
  snd_soc_write(codec, reg, val);

  val |= (WM8903_OUTPUT_INT << shift);
  snd_soc_write(codec, reg, val);


  val |= (WM8903_OUTPUT_OUT << shift);
  snd_soc_write(codec, reg, val);


  dcs_reg = snd_soc_read(codec, WM8903_DC_SERVO_0);
  dcs_reg |= dcs_bit;
  snd_soc_write(codec, WM8903_DC_SERVO_0, dcs_reg);


  val |= (WM8903_OUTPUT_SHORT << shift);
  snd_soc_write(codec, reg, val);
 }

 if (event & SND_SOC_DAPM_PRE_PMD) {
  val = snd_soc_read(codec, reg);


  val &= ~(WM8903_OUTPUT_SHORT << shift);
  snd_soc_write(codec, reg, val);


  dcs_reg = snd_soc_read(codec, WM8903_DC_SERVO_0);
  dcs_reg &= ~dcs_bit;
  snd_soc_write(codec, WM8903_DC_SERVO_0, dcs_reg);


  val &= ~((WM8903_OUTPUT_OUT | WM8903_OUTPUT_INT |
     WM8903_OUTPUT_IN) << shift);
  snd_soc_write(codec, reg, val);
 }

 return 0;
}
