
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* idx; } ;
struct snd_cs46xx {TYPE_2__ region; } ;
struct TYPE_3__ {scalar_t__ remap_addr; } ;


 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void snd_cs46xx_poke(struct snd_cs46xx *chip, unsigned long reg, unsigned int val)
{
 unsigned int bank = reg >> 16;
 unsigned int offset = reg & 0xffff;






 writel(val, chip->region.idx[bank+1].remap_addr + offset);
}
