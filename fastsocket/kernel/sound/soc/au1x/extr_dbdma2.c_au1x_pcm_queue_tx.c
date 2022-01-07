
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xpsc_audio_dmadata {scalar_t__ q_period; scalar_t__ periods; int dma_area_s; int dma_area; scalar_t__ period_bytes; int ddma_chan; } ;


 int DDMA_FLAGS_IE ;
 int au1xxx_dbdma_put_source_flags (int ,void*,scalar_t__,int ) ;
 scalar_t__ phys_to_virt (int ) ;

__attribute__((used)) static void au1x_pcm_queue_tx(struct au1xpsc_audio_dmadata *cd)
{
 au1xxx_dbdma_put_source_flags(cd->ddma_chan,
    (void *)phys_to_virt(cd->dma_area),
    cd->period_bytes, DDMA_FLAGS_IE);


 ++cd->q_period;
 cd->dma_area += cd->period_bytes;
 if (cd->q_period >= cd->periods) {
  cd->q_period = 0;
  cd->dma_area = cd->dma_area_s;
 }
}
