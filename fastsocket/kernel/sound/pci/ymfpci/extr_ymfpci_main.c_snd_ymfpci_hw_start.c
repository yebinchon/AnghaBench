
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci {int active_bank; int reg_lock; int start_count; } ;


 int YDSXGR_CTRLSELECT ;
 int YDSXGR_MODE ;
 int snd_ymfpci_readl (struct snd_ymfpci*,int ) ;
 int snd_ymfpci_writel (struct snd_ymfpci*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_ymfpci_hw_start(struct snd_ymfpci *chip)
{
 unsigned long flags;

 spin_lock_irqsave(&chip->reg_lock, flags);
 if (chip->start_count++ > 0)
  goto __end;
 snd_ymfpci_writel(chip, YDSXGR_MODE,
     snd_ymfpci_readl(chip, YDSXGR_MODE) | 3);
 chip->active_bank = snd_ymfpci_readl(chip, YDSXGR_CTRLSELECT) & 1;
      __end:
       spin_unlock_irqrestore(&chip->reg_lock, flags);
}
