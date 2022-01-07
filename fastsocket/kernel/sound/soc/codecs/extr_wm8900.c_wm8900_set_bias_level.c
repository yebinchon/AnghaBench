
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_codec {int bias_level; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8900_REG_ADDCTL ;
 int WM8900_REG_ADDCTL_BIAS_SRC ;
 int WM8900_REG_ADDCTL_TEMP_SD ;
 int WM8900_REG_ADDCTL_VMID_SOFTST ;
 int WM8900_REG_GPIO ;
 int WM8900_REG_GPIO_TEMP_ENA ;
 int WM8900_REG_HPCTL1 ;
 int WM8900_REG_POWER1 ;
 int WM8900_REG_POWER1_BIAS_ENA ;
 int WM8900_REG_POWER1_FLL_ENA ;
 int WM8900_REG_POWER1_STARTUP_BIAS_ENA ;
 int WM8900_REG_POWER2 ;
 int WM8900_REG_POWER2_SYSCLK_ENA ;
 int WM8900_REG_POWER3 ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout_interruptible (int ) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8900_set_bias_level(struct snd_soc_codec *codec,
     enum snd_soc_bias_level level)
{
 u16 reg;

 switch (level) {
 case 130:

  reg = snd_soc_read(codec, WM8900_REG_GPIO);
  snd_soc_write(codec, WM8900_REG_GPIO,
        reg | WM8900_REG_GPIO_TEMP_ENA);
  reg = snd_soc_read(codec, WM8900_REG_ADDCTL);
  snd_soc_write(codec, WM8900_REG_ADDCTL,
        reg | WM8900_REG_ADDCTL_TEMP_SD);
  break;

 case 129:
  break;

 case 128:

  if (codec->bias_level == 131) {

   snd_soc_write(codec, WM8900_REG_POWER1,
         WM8900_REG_POWER1_STARTUP_BIAS_ENA);


   snd_soc_write(codec, WM8900_REG_ADDCTL,
         WM8900_REG_ADDCTL_BIAS_SRC |
         WM8900_REG_ADDCTL_VMID_SOFTST);


   snd_soc_write(codec, WM8900_REG_POWER1,
         WM8900_REG_POWER1_STARTUP_BIAS_ENA | 0x1);


   schedule_timeout_interruptible(msecs_to_jiffies(400));


   snd_soc_write(codec, WM8900_REG_POWER1,
         WM8900_REG_POWER1_STARTUP_BIAS_ENA |
         WM8900_REG_POWER1_BIAS_ENA | 0x1);

   snd_soc_write(codec, WM8900_REG_ADDCTL, 0);

   snd_soc_write(codec, WM8900_REG_POWER1,
         WM8900_REG_POWER1_BIAS_ENA | 0x1);
  }

  reg = snd_soc_read(codec, WM8900_REG_POWER1);
  snd_soc_write(codec, WM8900_REG_POWER1,
        (reg & WM8900_REG_POWER1_FLL_ENA) |
        WM8900_REG_POWER1_BIAS_ENA | 0x1);
  snd_soc_write(codec, WM8900_REG_POWER2,
        WM8900_REG_POWER2_SYSCLK_ENA);
  snd_soc_write(codec, WM8900_REG_POWER3, 0);
  break;

 case 131:

  reg = snd_soc_read(codec, WM8900_REG_POWER1);
  snd_soc_write(codec, WM8900_REG_POWER1,
        reg & WM8900_REG_POWER1_STARTUP_BIAS_ENA);
  snd_soc_write(codec, WM8900_REG_ADDCTL,
        WM8900_REG_ADDCTL_BIAS_SRC |
        WM8900_REG_ADDCTL_VMID_SOFTST);


  snd_soc_write(codec, WM8900_REG_POWER1,
        WM8900_REG_POWER1_STARTUP_BIAS_ENA);
  schedule_timeout_interruptible(msecs_to_jiffies(500));


  snd_soc_write(codec, WM8900_REG_HPCTL1, 0);


  snd_soc_write(codec, WM8900_REG_ADDCTL, 0);
  snd_soc_write(codec, WM8900_REG_POWER1, 0);
  snd_soc_write(codec, WM8900_REG_POWER2, 0);
  snd_soc_write(codec, WM8900_REG_POWER3, 0);




  schedule_timeout_interruptible(msecs_to_jiffies(1));
  snd_soc_write(codec, WM8900_REG_POWER2,
        WM8900_REG_POWER2_SYSCLK_ENA);
  break;
 }
 codec->bias_level = level;
 return 0;
}
