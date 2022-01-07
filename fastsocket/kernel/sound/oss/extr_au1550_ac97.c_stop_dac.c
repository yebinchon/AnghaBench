
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dmabuf {int stopped; int dmanr; } ;
struct au1550_state {int lock; struct dmabuf dma_dac; } ;


 int PSC_AC97PCR ;
 int PSC_AC97PCR_TP ;
 int PSC_AC97STAT ;
 int PSC_AC97STAT_TB ;
 int au1xxx_dbdma_reset (int ) ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
stop_dac(struct au1550_state *s)
{
 struct dmabuf *db = &s->dma_dac;
 u32 stat;
 unsigned long flags;

 if (db->stopped)
  return;

 spin_lock_irqsave(&s->lock, flags);

 au_writel(PSC_AC97PCR_TP, PSC_AC97PCR);
 au_sync();



 do {
  stat = au_readl(PSC_AC97STAT);
  au_sync();
 } while ((stat & PSC_AC97STAT_TB) != 0);

 au1xxx_dbdma_reset(db->dmanr);

 db->stopped = 1;

 spin_unlock_irqrestore(&s->lock, flags);
}
