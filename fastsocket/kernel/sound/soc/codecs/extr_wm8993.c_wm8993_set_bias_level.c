
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lineout2_diff; int lineout1_diff; } ;
struct wm8993_priv {TYPE_1__ pdata; } ;
struct snd_soc_codec {int bias_level; struct wm8993_priv* private_data; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8993_ANTIPOP1 ;
 int WM8993_ANTIPOP2 ;
 int WM8993_BIAS_ENA ;
 int WM8993_BIAS_SRC ;
 int WM8993_LINEOUT_VMID_BUF_ENA ;
 int WM8993_POWER_MANAGEMENT_1 ;
 int WM8993_POWER_MANAGEMENT_2 ;
 int WM8993_STARTUP_BIAS_ENA ;
 int WM8993_TSHUT_ENA ;
 int WM8993_VMID_BUF_ENA ;
 int WM8993_VMID_RAMP_MASK ;
 int WM8993_VMID_SEL_MASK ;
 int msleep (int) ;
 int snd_soc_update_bits (struct snd_soc_codec*,int ,int,int) ;

__attribute__((used)) static int wm8993_set_bias_level(struct snd_soc_codec *codec,
     enum snd_soc_bias_level level)
{
 struct wm8993_priv *wm8993 = codec->private_data;

 switch (level) {
 case 130:
 case 129:

  snd_soc_update_bits(codec, WM8993_POWER_MANAGEMENT_1,
        WM8993_VMID_SEL_MASK, 0x2);
  snd_soc_update_bits(codec, WM8993_POWER_MANAGEMENT_2,
        WM8993_TSHUT_ENA, WM8993_TSHUT_ENA);
  break;

 case 128:
  if (codec->bias_level == 131) {

   snd_soc_update_bits(codec, WM8993_ANTIPOP2,
         WM8993_STARTUP_BIAS_ENA |
         WM8993_VMID_BUF_ENA |
         WM8993_VMID_RAMP_MASK |
         WM8993_BIAS_SRC,
         WM8993_STARTUP_BIAS_ENA |
         WM8993_VMID_BUF_ENA |
         WM8993_VMID_RAMP_MASK |
         WM8993_BIAS_SRC);



   if (!wm8993->pdata.lineout1_diff ||
       !wm8993->pdata.lineout2_diff)
    snd_soc_update_bits(codec, WM8993_ANTIPOP1,
       WM8993_LINEOUT_VMID_BUF_ENA,
       WM8993_LINEOUT_VMID_BUF_ENA);


   snd_soc_update_bits(codec, WM8993_POWER_MANAGEMENT_1,
         WM8993_VMID_SEL_MASK |
         WM8993_BIAS_ENA,
         WM8993_BIAS_ENA | 0x2);
   msleep(32);


   snd_soc_update_bits(codec, WM8993_ANTIPOP2,
         WM8993_BIAS_SRC |
         WM8993_STARTUP_BIAS_ENA, 0);
  }


  snd_soc_update_bits(codec, WM8993_POWER_MANAGEMENT_1,
        WM8993_VMID_SEL_MASK, 0x4);

  snd_soc_update_bits(codec, WM8993_POWER_MANAGEMENT_2,
        WM8993_TSHUT_ENA, 0);
  break;

 case 131:
  snd_soc_update_bits(codec, WM8993_ANTIPOP1,
        WM8993_LINEOUT_VMID_BUF_ENA, 0);

  snd_soc_update_bits(codec, WM8993_POWER_MANAGEMENT_1,
        WM8993_VMID_SEL_MASK | WM8993_BIAS_ENA,
        0);
  break;
 }

 codec->bias_level = level;

 return 0;
}
