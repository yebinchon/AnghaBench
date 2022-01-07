
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int mdp_irq_mask ;
 int mdp_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static uint32_t mdp_check_mask(uint32_t mask)
{
 uint32_t ret;
 unsigned long irq_flags;

 spin_lock_irqsave(&mdp_lock, irq_flags);
 ret = mdp_irq_mask & mask;
 spin_unlock_irqrestore(&mdp_lock, irq_flags);
 return ret;
}
