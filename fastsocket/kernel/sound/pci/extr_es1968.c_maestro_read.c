
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct es1968 {int reg_lock; } ;


 int __maestro_read (struct es1968*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline u16 maestro_read(struct es1968 *chip, u16 reg)
{
 unsigned long flags;
 u16 result;
 spin_lock_irqsave(&chip->reg_lock, flags);
 result = __maestro_read(chip, reg);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return result;
}
