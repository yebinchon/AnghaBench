
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int bias_level; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM9081_ANTI_POP_CONTROL ;
 int WM9081_BIAS_CONTROL_1 ;
 int WM9081_BIAS_ENA ;
 int WM9081_BIAS_SRC ;
 int WM9081_LINEOUT_DISCH ;
 int WM9081_STBY_BIAS_ENA ;
 int WM9081_VMID_CONTROL ;
 int WM9081_VMID_RAMP ;
 int WM9081_VMID_SEL_MASK ;
 int mdelay (int) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm9081_set_bias_level(struct snd_soc_codec *codec,
     enum snd_soc_bias_level level)
{
 u16 reg;

 switch (level) {
 case 130:
  break;

 case 129:

  reg = snd_soc_read(codec, WM9081_VMID_CONTROL);
  reg &= ~WM9081_VMID_SEL_MASK;
  reg |= 0x2;
  snd_soc_write(codec, WM9081_VMID_CONTROL, reg);


  reg = snd_soc_read(codec, WM9081_BIAS_CONTROL_1);
  reg &= ~WM9081_STBY_BIAS_ENA;
  snd_soc_write(codec, WM9081_BIAS_CONTROL_1, reg);
  break;

 case 128:

  if (codec->bias_level == 131) {

   reg = snd_soc_read(codec, WM9081_ANTI_POP_CONTROL);
   reg &= ~WM9081_LINEOUT_DISCH;
   snd_soc_write(codec, WM9081_ANTI_POP_CONTROL, reg);


   reg = snd_soc_read(codec, WM9081_BIAS_CONTROL_1);
   reg |= WM9081_BIAS_SRC | WM9081_BIAS_ENA;
   snd_soc_write(codec, WM9081_BIAS_CONTROL_1, reg);


   reg = snd_soc_read(codec, WM9081_VMID_CONTROL);
   reg |= WM9081_VMID_RAMP | 0x6;
   snd_soc_write(codec, WM9081_VMID_CONTROL, reg);

   mdelay(100);


   reg |= WM9081_BIAS_ENA;
   reg &= ~WM9081_VMID_RAMP;
   snd_soc_write(codec, WM9081_VMID_CONTROL, reg);


   reg = snd_soc_read(codec, WM9081_BIAS_CONTROL_1);
   reg &= ~WM9081_BIAS_SRC;
   snd_soc_write(codec, WM9081_BIAS_CONTROL_1, reg);
  }


  reg = snd_soc_read(codec, WM9081_BIAS_CONTROL_1);
  reg &= ~WM9081_VMID_SEL_MASK;
  reg |= 0x40;
  snd_soc_write(codec, WM9081_VMID_CONTROL, reg);


  reg = snd_soc_read(codec, WM9081_BIAS_CONTROL_1);
  reg |= WM9081_STBY_BIAS_ENA;
  snd_soc_write(codec, WM9081_BIAS_CONTROL_1, reg);
  break;

 case 131:

  reg = snd_soc_read(codec, WM9081_BIAS_CONTROL_1);
  reg |= WM9081_BIAS_SRC;
  snd_soc_write(codec, WM9081_BIAS_CONTROL_1, reg);


  reg = snd_soc_read(codec, WM9081_VMID_CONTROL);
  reg &= ~(WM9081_VMID_SEL_MASK | WM9081_BIAS_ENA);
  reg |= WM9081_VMID_RAMP;
  snd_soc_write(codec, WM9081_VMID_CONTROL, reg);


  reg = snd_soc_read(codec, WM9081_ANTI_POP_CONTROL);
  reg |= WM9081_LINEOUT_DISCH;
  snd_soc_write(codec, WM9081_ANTI_POP_CONTROL, reg);
  break;
 }

 codec->bias_level = level;

 return 0;
}
