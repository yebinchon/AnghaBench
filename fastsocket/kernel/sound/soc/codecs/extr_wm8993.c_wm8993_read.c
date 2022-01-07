
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; } ;


 int BUG_ON (int) ;
 unsigned int WM8993_MAX_REGISTER ;
 unsigned int wm8993_read_hw (struct snd_soc_codec*,unsigned int) ;
 scalar_t__ wm8993_volatile (unsigned int) ;

__attribute__((used)) static unsigned int wm8993_read(struct snd_soc_codec *codec,
    unsigned int reg)
{
 u16 *reg_cache = codec->reg_cache;

 BUG_ON(reg > WM8993_MAX_REGISTER);

 if (wm8993_volatile(reg))
  return wm8993_read_hw(codec, reg);
 else
  return reg_cache[reg];
}
