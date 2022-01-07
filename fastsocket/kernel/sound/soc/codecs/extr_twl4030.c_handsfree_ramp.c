
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 unsigned char TWL4030_HF_CTL_HB_EN ;
 unsigned char TWL4030_HF_CTL_LOOP_EN ;
 unsigned char TWL4030_HF_CTL_RAMP_EN ;
 unsigned char TWL4030_HF_CTL_REF_EN ;
 unsigned char twl4030_read_reg_cache (struct snd_soc_codec*,int) ;
 int twl4030_write (struct snd_soc_codec*,int,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static void handsfree_ramp(struct snd_soc_codec *codec, int reg, int ramp)
{
 unsigned char hs_ctl;

 hs_ctl = twl4030_read_reg_cache(codec, reg);

 if (ramp) {

  hs_ctl |= TWL4030_HF_CTL_REF_EN;
  twl4030_write(codec, reg, hs_ctl);
  udelay(10);
  hs_ctl |= TWL4030_HF_CTL_RAMP_EN;
  twl4030_write(codec, reg, hs_ctl);
  udelay(40);
  hs_ctl |= TWL4030_HF_CTL_LOOP_EN;
  hs_ctl |= TWL4030_HF_CTL_HB_EN;
  twl4030_write(codec, reg, hs_ctl);
 } else {

  hs_ctl &= ~TWL4030_HF_CTL_LOOP_EN;
  hs_ctl &= ~TWL4030_HF_CTL_HB_EN;
  twl4030_write(codec, reg, hs_ctl);
  hs_ctl &= ~TWL4030_HF_CTL_RAMP_EN;
  twl4030_write(codec, reg, hs_ctl);
  udelay(40);
  hs_ctl &= ~TWL4030_HF_CTL_REF_EN;
  twl4030_write(codec, reg, hs_ctl);
 }
}
