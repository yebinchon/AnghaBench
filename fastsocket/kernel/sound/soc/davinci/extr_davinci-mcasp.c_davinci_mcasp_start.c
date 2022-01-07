
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_audio_dev {scalar_t__ base; scalar_t__ rxnumevt; scalar_t__ txnumevt; } ;


 scalar_t__ DAVINCI_MCASP_RFIFOCTL ;
 scalar_t__ DAVINCI_MCASP_WFIFOCTL ;
 int FIFO_ENABLE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int mcasp_set_bits (scalar_t__,int ) ;
 int mcasp_start_rx (struct davinci_audio_dev*) ;
 int mcasp_start_tx (struct davinci_audio_dev*) ;

__attribute__((used)) static void davinci_mcasp_start(struct davinci_audio_dev *dev, int stream)
{
 if (stream == SNDRV_PCM_STREAM_PLAYBACK) {
  if (dev->txnumevt)
   mcasp_set_bits(dev->base + DAVINCI_MCASP_WFIFOCTL,
        FIFO_ENABLE);
  mcasp_start_tx(dev);
 } else {
  if (dev->rxnumevt)
   mcasp_set_bits(dev->base + DAVINCI_MCASP_RFIFOCTL,
        FIFO_ENABLE);
  mcasp_start_rx(dev);
 }
}
