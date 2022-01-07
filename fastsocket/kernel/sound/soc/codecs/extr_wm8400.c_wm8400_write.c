
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8400_priv {unsigned int fake_register; int wm8400; } ;
struct snd_soc_codec {struct wm8400_priv* private_data; } ;


 unsigned int WM8400_INTDRIVBITS ;
 int wm8400_set_bits (int ,unsigned int,int,unsigned int) ;

__attribute__((used)) static int wm8400_write(struct snd_soc_codec *codec, unsigned int reg,
 unsigned int value)
{
 struct wm8400_priv *wm8400 = codec->private_data;

 if (reg == WM8400_INTDRIVBITS) {
  wm8400->fake_register = value;
  return 0;
 } else
  return wm8400_set_bits(wm8400->wm8400, reg, 0xffff, value);
}
