
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3sa2 {int reg_lock; } ;


 int __snd_opl3sa2_write (struct snd_opl3sa2*,unsigned char,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_opl3sa2_write(struct snd_opl3sa2 *chip, unsigned char reg, unsigned char value)
{
 unsigned long flags;
 spin_lock_irqsave(&chip->reg_lock, flags);
 __snd_opl3sa2_write(chip, reg, value);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
}
