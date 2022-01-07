
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sscape_info {int lock; scalar_t__ dma_allocated; } ;


 int GA_DMAA_REG ;
 int __sscape_write (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sscape_coproc_close(void *dev_info, int sub_device)
{
 struct sscape_info *devc = dev_info;
 unsigned long flags;

 spin_lock_irqsave(&devc->lock,flags);
 if (devc->dma_allocated)
 {
  __sscape_write(GA_DMAA_REG, 0x20);
  devc->dma_allocated = 0;
 }
 spin_unlock_irqrestore(&devc->lock,flags);
 return;
}
