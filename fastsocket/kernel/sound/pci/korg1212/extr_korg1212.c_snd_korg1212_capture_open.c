
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct snd_korg1212 {size_t cardState; int lock; int channels; int periodsize; int capture_pid; struct snd_pcm_substream* capture_substream; int dma_rec; } ;
struct TYPE_2__ {int pid; } ;


 int K1212_CHANNELS ;
 int K1212_DEBUG_PRINTK (char*,int ) ;
 int K1212_PERIODS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 TYPE_1__* current ;
 int kPlayBufferFrames ;
 int snd_korg1212_OpenCard (struct snd_korg1212*) ;
 int snd_korg1212_capture_info ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int ,int ) ;
 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,int *) ;
 struct snd_korg1212* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int * stateName ;

__attribute__((used)) static int snd_korg1212_capture_open(struct snd_pcm_substream *substream)
{
        unsigned long flags;
        struct snd_korg1212 *korg1212 = snd_pcm_substream_chip(substream);
        struct snd_pcm_runtime *runtime = substream->runtime;

 K1212_DEBUG_PRINTK("K1212_DEBUG: snd_korg1212_capture_open [%s]\n",
      stateName[korg1212->cardState]);

 snd_korg1212_OpenCard(korg1212);

        runtime->hw = snd_korg1212_capture_info;
 snd_pcm_set_runtime_buffer(substream, &korg1212->dma_rec);

        spin_lock_irqsave(&korg1212->lock, flags);

        korg1212->capture_substream = substream;
 korg1212->capture_pid = current->pid;
        korg1212->periodsize = K1212_PERIODS;
 korg1212->channels = K1212_CHANNELS;

        spin_unlock_irqrestore(&korg1212->lock, flags);

        snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
         kPlayBufferFrames, kPlayBufferFrames);
        return 0;
}
