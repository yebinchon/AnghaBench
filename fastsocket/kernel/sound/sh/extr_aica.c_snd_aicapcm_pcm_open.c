
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; TYPE_1__* pcm; } ;
struct snd_pcm_runtime {int hw; } ;
struct snd_card_aica {scalar_t__ dma_check; scalar_t__ current_period; scalar_t__ clicks; struct aica_channel* channel; int master_volume; } ;
struct aica_channel {int pan; scalar_t__ flags; scalar_t__ pos; int vol; int cmd; int sfmt; } ;
struct TYPE_2__ {struct snd_card_aica* private_data; } ;


 int AICA_CMD_START ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SM_8BIT ;
 int enable ;
 struct aica_channel* kmalloc (int,int ) ;
 int snd_pcm_aica_playback_hw ;
 int spu_enable () ;

__attribute__((used)) static int snd_aicapcm_pcm_open(struct snd_pcm_substream
    *substream)
{
 struct snd_pcm_runtime *runtime;
 struct aica_channel *channel;
 struct snd_card_aica *dreamcastcard;
 if (!enable)
  return -ENOENT;
 dreamcastcard = substream->pcm->private_data;
 channel = kmalloc(sizeof(struct aica_channel), GFP_KERNEL);
 if (!channel)
  return -ENOMEM;

 channel->sfmt = SM_8BIT;
 channel->cmd = AICA_CMD_START;
 channel->vol = dreamcastcard->master_volume;
 channel->pan = 0x80;
 channel->pos = 0;
 channel->flags = 0;
 dreamcastcard->channel = channel;
 runtime = substream->runtime;
 runtime->hw = snd_pcm_aica_playback_hw;
 spu_enable();
 dreamcastcard->clicks = 0;
 dreamcastcard->current_period = 0;
 dreamcastcard->dma_check = 0;
 return 0;
}
