
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mdp_info {int dummy; } ;


 int locked_disable_mdp_irq (struct mdp_info*,int ) ;
 int mdp_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int disable_mdp_irq(struct mdp_info *mdp, uint32_t mask)
{
 unsigned long irq_flags;
 int ret;

 spin_lock_irqsave(&mdp_lock, irq_flags);
 ret = locked_disable_mdp_irq(mdp, mask);
 spin_unlock_irqrestore(&mdp_lock, irq_flags);
 return ret;
}
