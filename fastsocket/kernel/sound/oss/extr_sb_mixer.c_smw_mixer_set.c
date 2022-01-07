
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* levels; } ;
typedef TYPE_1__ sb_devc ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;



 int sb_setmixer (TYPE_1__*,int,int) ;
 int* smw_mix_regs ;

__attribute__((used)) static int smw_mixer_set(sb_devc * devc, int dev, int left, int right)
{
 int reg, val;

 switch (dev)
 {
  case 128:
   sb_setmixer(devc, 0x0b, 96 - (96 * left / 100));
   sb_setmixer(devc, 0x0c, 96 - (96 * right / 100));
   break;

  case 130:
  case 129:
   devc->levels[dev] = left | (right << 8);

   val = ((devc->levels[129] & 0xff) * 16 / (unsigned) 100) << 4;
   val |= ((devc->levels[130] & 0xff) * 16 / (unsigned) 100) & 0x0f;
   sb_setmixer(devc, 0x0d, val);


   val = (((devc->levels[129] >> 8) & 0xff) * 16 / (unsigned) 100) << 4;
   val |= (((devc->levels[130] >> 8) & 0xff) * 16 / (unsigned) 100) & 0x0f;
   sb_setmixer(devc, 0x0e, val);

   break;

  default:

   if (dev < 0 || dev >= ARRAY_SIZE(smw_mix_regs))
    return -EINVAL;
   reg = smw_mix_regs[dev];
   if (reg == 0)
    return -EINVAL;
   sb_setmixer(devc, reg, (24 - (24 * left / 100)) | 0x20);
   sb_setmixer(devc, reg + 1, (24 - (24 * right / 100)) | 0x40);
 }

 devc->levels[dev] = left | (right << 8);
 return left | (right << 8);
}
