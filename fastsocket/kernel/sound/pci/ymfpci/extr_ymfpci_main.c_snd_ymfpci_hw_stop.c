
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci {scalar_t__ start_count; int reg_lock; int interrupt_sleep; int interrupt_sleep_count; } ;


 int YDSXGR_MODE ;
 int YDSXGR_STATUS ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int snd_ymfpci_readl (struct snd_ymfpci*,int ) ;
 int snd_ymfpci_writel (struct snd_ymfpci*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void snd_ymfpci_hw_stop(struct snd_ymfpci *chip)
{
 unsigned long flags;
 long timeout = 1000;

 spin_lock_irqsave(&chip->reg_lock, flags);
 if (--chip->start_count > 0)
  goto __end;
 snd_ymfpci_writel(chip, YDSXGR_MODE,
     snd_ymfpci_readl(chip, YDSXGR_MODE) & ~3);
 while (timeout-- > 0) {
  if ((snd_ymfpci_readl(chip, YDSXGR_STATUS) & 2) == 0)
   break;
 }
 if (atomic_read(&chip->interrupt_sleep_count)) {
  atomic_set(&chip->interrupt_sleep_count, 0);
  wake_up(&chip->interrupt_sleep);
 }
      __end:
       spin_unlock_irqrestore(&chip->reg_lock, flags);
}
