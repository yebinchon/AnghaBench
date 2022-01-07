
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_amd7930 {int lock; scalar_t__ regs; } ;


 scalar_t__ AMD7930_CR ;
 scalar_t__ AMD7930_DR ;
 int AMR_INIT ;
 int sbus_writeb (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __inline__ void amd7930_idle(struct snd_amd7930 *amd)
{
 unsigned long flags;

 spin_lock_irqsave(&amd->lock, flags);
 sbus_writeb(AMR_INIT, amd->regs + AMD7930_CR);
 sbus_writeb(0, amd->regs + AMD7930_DR);
 spin_unlock_irqrestore(&amd->lock, flags);
}
