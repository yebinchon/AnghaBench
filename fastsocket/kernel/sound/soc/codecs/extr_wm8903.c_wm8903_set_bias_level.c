
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int bias_level; int reg_cache; struct i2c_client* control_data; } ;
struct i2c_client {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8903_CHARGE_PUMP_TEST_1 ;
 int WM8903_CLASS_W_0 ;
 int WM8903_CLK_SYS_ENA ;
 int WM8903_CLOCK_RATES_2 ;
 int WM8903_CONTROL_INTERFACE_TEST_1 ;
 int WM8903_CP_DYN_FREQ ;
 int WM8903_CP_DYN_V ;
 int WM8903_CP_SW_KELVIN_MODE_MASK ;
 int WM8903_TEST_KEY ;
 int WM8903_VMID_CONTROL_0 ;
 int WM8903_VMID_RES_250K ;
 int WM8903_VMID_RES_50K ;
 int WM8903_VMID_RES_MASK ;
 int WM8903_WRITE_SEQUENCER_0 ;
 int WM8903_WRITE_SEQUENCER_1 ;
 int WM8903_WRITE_SEQUENCER_2 ;
 int dev_dbg (int *,char*) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;
 int wm8903_run_sequence (struct snd_soc_codec*,int) ;
 int wm8903_sync_reg_cache (struct snd_soc_codec*,int ) ;

__attribute__((used)) static int wm8903_set_bias_level(struct snd_soc_codec *codec,
     enum snd_soc_bias_level level)
{
 struct i2c_client *i2c = codec->control_data;
 u16 reg, reg2;

 switch (level) {
 case 130:
 case 129:
  reg = snd_soc_read(codec, WM8903_VMID_CONTROL_0);
  reg &= ~(WM8903_VMID_RES_MASK);
  reg |= WM8903_VMID_RES_50K;
  snd_soc_write(codec, WM8903_VMID_CONTROL_0, reg);
  break;

 case 128:
  if (codec->bias_level == 131) {
   snd_soc_write(codec, WM8903_CLOCK_RATES_2,
         WM8903_CLK_SYS_ENA);


   snd_soc_write(codec, WM8903_WRITE_SEQUENCER_0, 0x11);
   snd_soc_write(codec, WM8903_WRITE_SEQUENCER_1, 0x1257);
   snd_soc_write(codec, WM8903_WRITE_SEQUENCER_2, 0x2);

   wm8903_run_sequence(codec, 0);
   wm8903_sync_reg_cache(codec, codec->reg_cache);


   reg = snd_soc_read(codec,
       WM8903_CONTROL_INTERFACE_TEST_1);
   snd_soc_write(codec, WM8903_CONTROL_INTERFACE_TEST_1,
         reg | WM8903_TEST_KEY);
   reg2 = snd_soc_read(codec, WM8903_CHARGE_PUMP_TEST_1);
   snd_soc_write(codec, WM8903_CHARGE_PUMP_TEST_1,
         reg2 | WM8903_CP_SW_KELVIN_MODE_MASK);
   snd_soc_write(codec, WM8903_CONTROL_INTERFACE_TEST_1,
         reg);




   dev_dbg(&i2c->dev, "Enabling Class W\n");
   snd_soc_write(codec, WM8903_CLASS_W_0, reg |
         WM8903_CP_DYN_FREQ | WM8903_CP_DYN_V);
  }

  reg = snd_soc_read(codec, WM8903_VMID_CONTROL_0);
  reg &= ~(WM8903_VMID_RES_MASK);
  reg |= WM8903_VMID_RES_250K;
  snd_soc_write(codec, WM8903_VMID_CONTROL_0, reg);
  break;

 case 131:
  wm8903_run_sequence(codec, 32);
  reg = snd_soc_read(codec, WM8903_CLOCK_RATES_2);
  reg &= ~WM8903_CLK_SYS_ENA;
  snd_soc_write(codec, WM8903_CLOCK_RATES_2, reg);
  break;
 }

 codec->bias_level = level;

 return 0;
}
