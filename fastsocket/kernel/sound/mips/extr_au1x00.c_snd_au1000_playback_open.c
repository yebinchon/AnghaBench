
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_3__* runtime; TYPE_2__* private_data; TYPE_1__* pcm; } ;
struct snd_au1000 {TYPE_2__** stream; } ;
struct TYPE_6__ {int hw; } ;
struct TYPE_5__ {int * buffer; struct snd_pcm_substream* substream; } ;
struct TYPE_4__ {struct snd_au1000* private_data; } ;


 size_t PLAYBACK ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int hw_constraints_rates ;
 int snd_au1000_hw ;
 scalar_t__ snd_pcm_hw_constraint_list (TYPE_3__*,int ,int ,int *) ;

__attribute__((used)) static int
snd_au1000_playback_open(struct snd_pcm_substream *substream)
{
 struct snd_au1000 *au1000 = substream->pcm->private_data;

 au1000->stream[PLAYBACK]->substream = substream;
 au1000->stream[PLAYBACK]->buffer = ((void*)0);
 substream->private_data = au1000->stream[PLAYBACK];
 substream->runtime->hw = snd_au1000_hw;
 return (snd_pcm_hw_constraint_list(substream->runtime, 0,
  SNDRV_PCM_HW_PARAM_RATE, &hw_constraints_rates) < 0);
}
