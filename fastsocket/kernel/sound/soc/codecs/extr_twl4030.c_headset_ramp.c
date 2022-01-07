
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_setup_data {int (* set_hs_extmute ) (int) ;scalar_t__ hs_extmute; } ;
struct twl4030_priv {unsigned int sysclk; } ;
struct snd_soc_device {struct twl4030_setup_data* codec_data; } ;
struct snd_soc_codec {struct twl4030_priv* private_data; struct snd_soc_device* socdev; } ;


 unsigned char TWL4030_EXTMUTE ;
 int TWL4030_MODULE_AUDIO_VOICE ;
 unsigned char TWL4030_RAMP_DELAY ;
 unsigned char TWL4030_RAMP_EN ;
 int TWL4030_REG_HS_GAIN_SET ;
 int TWL4030_REG_HS_POPN_SET ;
 unsigned char TWL4030_VMID_EN ;
 int mdelay (unsigned int) ;
 int stub1 (int) ;
 int stub2 (int) ;
 int twl4030_i2c_write_u8 (int ,unsigned char,int ) ;
 unsigned char twl4030_read_reg_cache (struct snd_soc_codec*,int ) ;
 int twl4030_write (struct snd_soc_codec*,int ,unsigned char) ;

__attribute__((used)) static void headset_ramp(struct snd_soc_codec *codec, int ramp)
{
 struct snd_soc_device *socdev = codec->socdev;
 struct twl4030_setup_data *setup = socdev->codec_data;

 unsigned char hs_gain, hs_pop;
 struct twl4030_priv *twl4030 = codec->private_data;

 unsigned int ramp_base[] = {524288, 1048576, 2097152, 4194304,
        8388608, 16777216, 33554432, 67108864};

 hs_gain = twl4030_read_reg_cache(codec, TWL4030_REG_HS_GAIN_SET);
 hs_pop = twl4030_read_reg_cache(codec, TWL4030_REG_HS_POPN_SET);



 if (setup && setup->hs_extmute) {
  if (setup->set_hs_extmute) {
   setup->set_hs_extmute(1);
  } else {
   hs_pop |= TWL4030_EXTMUTE;
   twl4030_write(codec, TWL4030_REG_HS_POPN_SET, hs_pop);
  }
 }

 if (ramp) {

  hs_pop |= TWL4030_VMID_EN;
  twl4030_write(codec, TWL4030_REG_HS_POPN_SET, hs_pop);
  twl4030_write(codec, TWL4030_REG_HS_GAIN_SET, hs_gain);
  hs_pop |= TWL4030_RAMP_EN;
  twl4030_write(codec, TWL4030_REG_HS_POPN_SET, hs_pop);

  mdelay((ramp_base[(hs_pop & TWL4030_RAMP_DELAY) >> 2] /
   twl4030->sysclk) + 1);
 } else {


  hs_pop &= ~TWL4030_RAMP_EN;
  twl4030_write(codec, TWL4030_REG_HS_POPN_SET, hs_pop);

  mdelay((ramp_base[(hs_pop & TWL4030_RAMP_DELAY) >> 2] /
   twl4030->sysclk) + 1);

  twl4030_i2c_write_u8(TWL4030_MODULE_AUDIO_VOICE,
     hs_gain & (~0x0f),
     TWL4030_REG_HS_GAIN_SET);

  hs_pop &= ~TWL4030_VMID_EN;
  twl4030_write(codec, TWL4030_REG_HS_POPN_SET, hs_pop);
 }


 if (setup && setup->hs_extmute) {
  if (setup->set_hs_extmute) {
   setup->set_hs_extmute(0);
  } else {
   hs_pop &= ~TWL4030_EXTMUTE;
   twl4030_write(codec, TWL4030_REG_HS_POPN_SET, hs_pop);
  }
 }
}
