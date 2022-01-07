
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct twl4030_priv {int bypass_state; } ;
struct soc_mixer_control {int reg; int shift; } ;
struct snd_soc_dapm_widget {TYPE_2__* codec; TYPE_1__* kcontrols; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_6__ {scalar_t__ bias_level; struct twl4030_priv* private_data; } ;
struct TYPE_5__ {scalar_t__ private_value; } ;


 scalar_t__ SND_SOC_BIAS_STANDBY ;
 unsigned char TWL4030_FMLOOP_EN ;
 int TWL4030_REG_ARXL1_APGA_CTL ;
 int TWL4030_REG_ARXR2_APGA_CTL ;
 int TWL4030_REG_MISC_SET_1 ;
 int TWL4030_REG_VDL_APGA_CTL ;
 int TWL4030_REG_VSTPGA ;
 int twl4030_codec_mute (TYPE_2__*,int) ;
 unsigned char twl4030_read_reg_cache (TYPE_2__*,int) ;
 int twl4030_write (TYPE_2__*,int,unsigned char) ;

__attribute__((used)) static int bypass_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kcontrol, int event)
{
 struct soc_mixer_control *m =
  (struct soc_mixer_control *)w->kcontrols->private_value;
 struct twl4030_priv *twl4030 = w->codec->private_data;
 unsigned char reg, misc;

 reg = twl4030_read_reg_cache(w->codec, m->reg);







 if (m->reg == TWL4030_REG_VSTPGA) {

  if (reg)
   twl4030->bypass_state |= (1 << 5);
  else
   twl4030->bypass_state &= ~(1 << 5);
 } else if (m->reg <= TWL4030_REG_ARXR2_APGA_CTL) {

  if (reg & (1 << m->shift))
   twl4030->bypass_state |=
    (1 << (m->reg - TWL4030_REG_ARXL1_APGA_CTL));
  else
   twl4030->bypass_state &=
    ~(1 << (m->reg - TWL4030_REG_ARXL1_APGA_CTL));
 } else if (m->reg == TWL4030_REG_VDL_APGA_CTL) {

  if (reg & (1 << m->shift))
   twl4030->bypass_state |= (1 << 4);
  else
   twl4030->bypass_state &= ~(1 << 4);
 } else {

  if (reg & (0x7 << m->shift))
   twl4030->bypass_state |= (1 << (m->shift ? 7 : 6));
  else
   twl4030->bypass_state &= ~(1 << (m->shift ? 7 : 6));
 }


 misc = twl4030_read_reg_cache(w->codec, TWL4030_REG_MISC_SET_1);
 if (twl4030->bypass_state & 0x1F)
  misc |= TWL4030_FMLOOP_EN;
 else
  misc &= ~TWL4030_FMLOOP_EN;
 twl4030_write(w->codec, TWL4030_REG_MISC_SET_1, misc);

 if (w->codec->bias_level == SND_SOC_BIAS_STANDBY) {
  if (twl4030->bypass_state)
   twl4030_codec_mute(w->codec, 0);
  else
   twl4030_codec_mute(w->codec, 1);
 }
 return 0;
}
