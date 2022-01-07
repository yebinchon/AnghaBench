
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct es1968 {int reg_lock; } ;


 int __apu_get_register (struct es1968*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u16 apu_get_register(struct es1968 *chip, u16 channel, u8 reg)
{
 unsigned long flags;
 u16 v;
 spin_lock_irqsave(&chip->reg_lock, flags);
 v = __apu_get_register(chip, channel, reg);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return v;
}
