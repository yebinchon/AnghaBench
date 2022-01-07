
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm801 {int reg_lock; scalar_t__ port; } ;


 unsigned short inw (scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_fm801_update_bits(struct fm801 *chip, unsigned short reg,
     unsigned short mask, unsigned short value)
{
 int change;
 unsigned long flags;
 unsigned short old, new;

 spin_lock_irqsave(&chip->reg_lock, flags);
 old = inw(chip->port + reg);
 new = (old & ~mask) | value;
 change = old != new;
 if (change)
  outw(new, chip->port + reg);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return change;
}
