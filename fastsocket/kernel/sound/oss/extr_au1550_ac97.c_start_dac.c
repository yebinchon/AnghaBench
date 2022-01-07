
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmabuf {scalar_t__ stopped; int dmanr; int num_channels; } ;
struct au1550_state {struct dmabuf dma_dac; } ;


 int PSC_AC97PCR ;
 int PSC_AC97PCR_TC ;
 int PSC_AC97PCR_TS ;
 int au1xxx_dbdma_start (int ) ;
 int au_sync () ;
 int au_writel (int ,int ) ;
 int set_xmit_slots (int ) ;

__attribute__((used)) static void
start_dac(struct au1550_state *s)
{
 struct dmabuf *db = &s->dma_dac;

 if (!db->stopped)
  return;

 set_xmit_slots(db->num_channels);
 au_writel(PSC_AC97PCR_TC, PSC_AC97PCR);
 au_sync();
 au_writel(PSC_AC97PCR_TS, PSC_AC97PCR);
 au_sync();

 au1xxx_dbdma_start(db->dmanr);

 db->stopped = 0;
}
