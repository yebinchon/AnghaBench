
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ps3_card_info {int running; int dma_lock; } ;
struct snd_pcm_substream {int dummy; } ;


 int PS3_AUDIO_AX_IS ;
 int PS3_AUDIO_KICK (int) ;
 int PS3_AUDIO_KICK_STATUS_MASK ;


 int SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL ;
 int SND_PS3_DMA_FILLTYPE_SILENT_RUNNING ;
 int read_reg (int ) ;
 struct snd_ps3_card_info* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_ps3_kick_dma (struct snd_ps3_card_info*) ;
 int snd_ps3_program_dma (struct snd_ps3_card_info*,int ) ;
 int snd_ps3_wait_for_dma_stop (struct snd_ps3_card_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;
 int update_reg (int ,int ) ;

__attribute__((used)) static int snd_ps3_pcm_trigger(struct snd_pcm_substream *substream,
          int cmd)
{
 struct snd_ps3_card_info *card = snd_pcm_substream_chip(substream);
 int ret = 0;

 switch (cmd) {
 case 129:

  update_reg(PS3_AUDIO_AX_IS, 0);

  spin_lock(&card->dma_lock);
  {
   card->running = 1;
  }
  spin_unlock(&card->dma_lock);

  snd_ps3_program_dma(card,
        SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL);
  snd_ps3_kick_dma(card);
  while (read_reg(PS3_AUDIO_KICK(7)) &
         PS3_AUDIO_KICK_STATUS_MASK) {
   udelay(1);
  }
  snd_ps3_program_dma(card, SND_PS3_DMA_FILLTYPE_SILENT_RUNNING);
  snd_ps3_kick_dma(card);
  break;

 case 128:
  spin_lock(&card->dma_lock);
  {
   card->running = 0;
  }
  spin_unlock(&card->dma_lock);
  snd_ps3_wait_for_dma_stop(card);
  break;
 default:
  break;

 }

 return ret;
}
