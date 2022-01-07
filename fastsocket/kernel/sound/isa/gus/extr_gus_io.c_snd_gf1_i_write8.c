
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int reg_lock; } ;


 int __snd_gf1_write8 (struct snd_gus_card*,unsigned char,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_gf1_i_write8(struct snd_gus_card * gus,
        unsigned char reg,
                      unsigned char data)
{
 unsigned long flags;

 spin_lock_irqsave(&gus->reg_lock, flags);
 __snd_gf1_write8(gus, reg, data);
 spin_unlock_irqrestore(&gus->reg_lock, flags);
}
