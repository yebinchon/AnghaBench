
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ac97 {unsigned short* regs; int reg_mutex; int reg_accessed; TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* write ) (struct snd_ac97*,unsigned short,unsigned short) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (unsigned short,int ) ;
 int snd_ac97_valid_reg (struct snd_ac97*,unsigned short) ;
 int stub1 (struct snd_ac97*,unsigned short,unsigned short) ;

void snd_ac97_write_cache(struct snd_ac97 *ac97, unsigned short reg, unsigned short value)
{
 if (!snd_ac97_valid_reg(ac97, reg))
  return;
 mutex_lock(&ac97->reg_mutex);
 ac97->regs[reg] = value;
 ac97->bus->ops->write(ac97, reg, value);
 set_bit(reg, ac97->reg_accessed);
 mutex_unlock(&ac97->reg_mutex);
}
