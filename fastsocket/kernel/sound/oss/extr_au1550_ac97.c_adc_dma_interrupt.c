
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dmabuf {scalar_t__ count; scalar_t__ dmasize; scalar_t__ nextIn; scalar_t__ dma_fragsize; scalar_t__ rawbuf; int wait; int total_bytes; int dmanr; int error; } ;
struct au1550_state {int lock; struct dmabuf dma_adc; } ;


 int au1xxx_dbdma_get_dest (int ,void*,scalar_t__*) ;
 int au1xxx_dbdma_put_dest (int ,scalar_t__,scalar_t__) ;
 int err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stop_adc (struct au1550_state*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void adc_dma_interrupt(int irq, void *dev_id)
{
 struct au1550_state *s = (struct au1550_state *)dev_id;
 struct dmabuf *dp = &s->dma_adc;
 u32 obytes;
 char *obuf;

 spin_lock(&s->lock);



 au1xxx_dbdma_get_dest(dp->dmanr, (void *)(&obuf), &obytes);

 if ((dp->count + obytes) > dp->dmasize) {


  spin_unlock(&s->lock);
  stop_adc(s);
  dp->error++;
  err("adc overrun");
  return;
 }



 au1xxx_dbdma_put_dest(dp->dmanr, dp->nextIn, dp->dma_fragsize);

 dp->nextIn += dp->dma_fragsize;
 if (dp->nextIn >= dp->rawbuf + dp->dmasize)
  dp->nextIn -= dp->dmasize;

 dp->count += obytes;
 dp->total_bytes += obytes;



 if (waitqueue_active(&dp->wait))
  wake_up(&dp->wait);

 spin_unlock(&s->lock);
}
