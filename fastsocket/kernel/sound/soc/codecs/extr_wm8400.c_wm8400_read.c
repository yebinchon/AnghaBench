
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8400_priv {unsigned int fake_register; int wm8400; } ;
struct snd_soc_codec {struct wm8400_priv* private_data; } ;


 unsigned int WM8400_INTDRIVBITS ;
 unsigned int wm8400_reg_read (int ,unsigned int) ;

__attribute__((used)) static inline unsigned int wm8400_read(struct snd_soc_codec *codec,
           unsigned int reg)
{
 struct wm8400_priv *wm8400 = codec->private_data;

 if (reg == WM8400_INTDRIVBITS)
  return wm8400->fake_register;
 else
  return wm8400_reg_read(wm8400->wm8400, reg);
}
