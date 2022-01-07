
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int id; } ;
__attribute__((used)) static int snd_ac97_valid_reg(struct snd_ac97 *ac97, unsigned short reg)
{

 switch (ac97->id) {
 case 136:
 case 135:
  if (reg <= 0x1c || reg == 0x20 || reg == 0x26 || reg >= 0x7c)
   return 1;
  return 0;
 case 143:
 case 142:
 case 141:
  if (reg >= 0x3a && reg <= 0x6e)
   return 0;
  return 1;
 case 140:
 case 139:
 case 138:
 case 137:
  if (reg == 0x5a)
   return 1;
  if (reg >= 0x3c && reg <= 0x6e)
   return 0;
  return 1;
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  if (reg <= 0x3a || reg >= 0x5a)
   return 1;
  return 0;
 }
 return 1;
}
