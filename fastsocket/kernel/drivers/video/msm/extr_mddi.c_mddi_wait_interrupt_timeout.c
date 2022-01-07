
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mddi_info {int got_int; int int_enable; int int_wait; int int_lock; } ;


 int INTEN ;
 int mddi_writel (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 long wait_event_timeout (int ,int,int) ;

__attribute__((used)) static long mddi_wait_interrupt_timeout(struct mddi_info *mddi,
     uint32_t intmask, int timeout)
{
 unsigned long irq_flags;

 spin_lock_irqsave(&mddi->int_lock, irq_flags);
 mddi->got_int &= ~intmask;
 mddi->int_enable |= intmask;
 mddi_writel(mddi->int_enable, INTEN);
 spin_unlock_irqrestore(&mddi->int_lock, irq_flags);
 return wait_event_timeout(mddi->int_wait, mddi->got_int & intmask,
      timeout);
}
