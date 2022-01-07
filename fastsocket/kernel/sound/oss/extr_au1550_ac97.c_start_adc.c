
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmabuf {scalar_t__ nextIn; scalar_t__ dma_fragsize; scalar_t__ rawbuf; scalar_t__ dmasize; scalar_t__ stopped; int dmanr; int num_channels; } ;
struct au1550_state {struct dmabuf dma_adc; } ;


 int PSC_AC97PCR ;
 int PSC_AC97PCR_RC ;
 int PSC_AC97PCR_RS ;
 int au1xxx_dbdma_put_dest (int ,scalar_t__,scalar_t__) ;
 int au1xxx_dbdma_start (int ) ;
 int au_sync () ;
 int au_writel (int ,int ) ;
 int set_recv_slots (int ) ;

__attribute__((used)) static void
start_adc(struct au1550_state *s)
{
 struct dmabuf *db = &s->dma_adc;
 int i;

 if (!db->stopped)
  return;



 for (i=0; i<2; i++) {
  au1xxx_dbdma_put_dest(db->dmanr, db->nextIn, db->dma_fragsize);

  db->nextIn += db->dma_fragsize;
  if (db->nextIn >= db->rawbuf + db->dmasize)
   db->nextIn -= db->dmasize;
 }

 set_recv_slots(db->num_channels);
 au1xxx_dbdma_start(db->dmanr);
 au_writel(PSC_AC97PCR_RC, PSC_AC97PCR);
 au_sync();
 au_writel(PSC_AC97PCR_RS, PSC_AC97PCR);
 au_sync();

 db->stopped = 0;
}
