
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct es1968 {int reg_lock; } ;


 int __maestro_write (struct es1968*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void maestro_write(struct es1968 *chip, u16 reg, u16 data)
{
 unsigned long flags;
 spin_lock_irqsave(&chip->reg_lock, flags);
 __maestro_write(chip, reg, data);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
}
