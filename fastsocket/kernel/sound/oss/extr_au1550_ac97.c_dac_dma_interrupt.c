
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dmabuf {scalar_t__ count; scalar_t__ fragsize; scalar_t__ nextOut; scalar_t__ rawbuf; scalar_t__ dmasize; int wait; int dma_qcount; scalar_t__ dma_fragsize; int total_bytes; int dmanr; } ;
struct au1550_state {int lock; struct dmabuf dma_dac; } ;


 int AC97C_TE ;
 int AC97C_XO ;
 int AC97C_XU ;
 int PSC_AC97STAT ;
 scalar_t__ au1xxx_dbdma_put_source (int ,scalar_t__,scalar_t__) ;
 int au_readl (int ) ;
 int err (char*) ;
 int pr_debug (char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void dac_dma_interrupt(int irq, void *dev_id)
{
 struct au1550_state *s = (struct au1550_state *) dev_id;
 struct dmabuf *db = &s->dma_dac;
 u32 ac97c_stat;

 spin_lock(&s->lock);

 ac97c_stat = au_readl(PSC_AC97STAT);
 if (ac97c_stat & (AC97C_XU | AC97C_XO | AC97C_TE))
  pr_debug("AC97C status = 0x%08x\n", ac97c_stat);
 db->dma_qcount--;

 if (db->count >= db->fragsize) {
  if (au1xxx_dbdma_put_source(db->dmanr, db->nextOut,
       db->fragsize) == 0) {
   err("qcount < 2 and no ring room!");
  }
  db->nextOut += db->fragsize;
  if (db->nextOut >= db->rawbuf + db->dmasize)
   db->nextOut -= db->dmasize;
  db->count -= db->fragsize;
  db->total_bytes += db->dma_fragsize;
  db->dma_qcount++;
 }


 if (waitqueue_active(&db->wait))
  wake_up(&db->wait);

 spin_unlock(&s->lock);
}
