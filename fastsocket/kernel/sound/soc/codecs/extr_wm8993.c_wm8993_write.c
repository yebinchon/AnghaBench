
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; int (* hw_write ) (int ,unsigned int*,int) ;int control_data; } ;


 int BUG_ON (int) ;
 int EIO ;
 unsigned int WM8993_MAX_REGISTER ;
 int stub1 (int ,unsigned int*,int) ;
 int wm8993_volatile (unsigned int) ;

__attribute__((used)) static int wm8993_write(struct snd_soc_codec *codec, unsigned int reg,
   unsigned int value)
{
 u16 *reg_cache = codec->reg_cache;
 u8 data[3];
 int ret;

 BUG_ON(reg > WM8993_MAX_REGISTER);





 data[0] = reg;
 data[1] = value >> 8;
 data[2] = value & 0x00ff;

 if (!wm8993_volatile(reg))
  reg_cache[reg] = value;

 ret = codec->hw_write(codec->control_data, data, 3);

 if (ret == 3)
  return 0;
 if (ret < 0)
  return ret;
 return -EIO;
}
