
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3sa2 {int reg_lock; } ;


 unsigned char __snd_opl3sa2_read (struct snd_opl3sa2*,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned char snd_opl3sa2_read(struct snd_opl3sa2 *chip, unsigned char reg)
{
 unsigned long flags;
 unsigned char result;

 spin_lock_irqsave(&chip->reg_lock, flags);
 result = __snd_opl3sa2_read(chip, reg);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return result;
}
