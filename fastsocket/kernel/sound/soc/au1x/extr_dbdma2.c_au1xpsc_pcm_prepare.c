
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct au1xpsc_audio_dmadata {int ddma_chan; } ;


 size_t PCM_RX ;
 size_t SUBSTREAM_TYPE (struct snd_pcm_substream*) ;
 int au1x_pcm_queue_rx (struct au1xpsc_audio_dmadata*) ;
 int au1x_pcm_queue_tx (struct au1xpsc_audio_dmadata*) ;
 struct au1xpsc_audio_dmadata** au1xpsc_audio_pcmdma ;
 int au1xxx_dbdma_reset (int ) ;

__attribute__((used)) static int au1xpsc_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct au1xpsc_audio_dmadata *pcd =
   au1xpsc_audio_pcmdma[SUBSTREAM_TYPE(substream)];

 au1xxx_dbdma_reset(pcd->ddma_chan);

 if (SUBSTREAM_TYPE(substream) == PCM_RX) {
  au1x_pcm_queue_rx(pcd);
  au1x_pcm_queue_rx(pcd);
 } else {
  au1x_pcm_queue_tx(pcd);
  au1x_pcm_queue_tx(pcd);
 }

 return 0;
}
