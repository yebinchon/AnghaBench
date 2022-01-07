
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct camelot_pcm {int txid; struct snd_pcm_substream* tx_ss; struct snd_pcm_substream* rx_ss; } ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {size_t id; } ;


 int EBUSY ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 struct camelot_pcm* cam_pcm_data ;
 int camelot_pcm_hardware ;
 int camelot_rxdma ;
 int camelot_txdma ;
 int dmabrg_request_irq (int,int ,struct camelot_pcm*) ;
 int pr_debug (char*,size_t) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int camelot_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct camelot_pcm *cam = &cam_pcm_data[rtd->dai->cpu_dai->id];
 int recv = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ? 0:1;
 int ret, dmairq;

 snd_soc_set_runtime_hwparams(substream, &camelot_pcm_hardware);


 dmairq = (recv) ? cam->txid + 2 : cam->txid;
 if (recv) {
  cam->rx_ss = substream;
  ret = dmabrg_request_irq(dmairq, camelot_rxdma, cam);
  if (unlikely(ret)) {
   pr_debug("audio unit %d irqs already taken!\n",
        rtd->dai->cpu_dai->id);
   return -EBUSY;
  }
  (void)dmabrg_request_irq(dmairq + 1,camelot_rxdma, cam);
 } else {
  cam->tx_ss = substream;
  ret = dmabrg_request_irq(dmairq, camelot_txdma, cam);
  if (unlikely(ret)) {
   pr_debug("audio unit %d irqs already taken!\n",
        rtd->dai->cpu_dai->id);
   return -EBUSY;
  }
  (void)dmabrg_request_irq(dmairq + 1, camelot_txdma, cam);
 }
 return 0;
}
