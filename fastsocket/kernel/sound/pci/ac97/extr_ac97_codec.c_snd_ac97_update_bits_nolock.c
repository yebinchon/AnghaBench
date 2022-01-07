
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ac97 {unsigned short* regs; int reg_accessed; TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* write ) (struct snd_ac97*,unsigned short,unsigned short) ;} ;


 int set_bit (unsigned short,int ) ;
 unsigned short snd_ac97_read_cache (struct snd_ac97*,unsigned short) ;
 int stub1 (struct snd_ac97*,unsigned short,unsigned short) ;

int snd_ac97_update_bits_nolock(struct snd_ac97 *ac97, unsigned short reg,
    unsigned short mask, unsigned short value)
{
 int change;
 unsigned short old, new;

 old = snd_ac97_read_cache(ac97, reg);
 new = (old & ~mask) | (value & mask);
 change = old != new;
 if (change) {
  ac97->regs[reg] = new;
  ac97->bus->ops->write(ac97, reg, new);
 }
 set_bit(reg, ac97->reg_accessed);
 return change;
}
