
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_3__* ops; } ;
struct TYPE_4__ {int hw_data; int hw_io; } ;
struct TYPE_5__ {TYPE_1__ pcm_indirect; int buffer_dma; } ;
struct snd_hal2 {TYPE_2__ dac; } ;
struct TYPE_6__ {int (* ack ) (struct snd_pcm_substream*) ;} ;


 int EINVAL ;


 int hal2_start_dac (struct snd_hal2*) ;
 int hal2_stop_dac (struct snd_hal2*) ;
 struct snd_hal2* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct snd_pcm_substream*) ;

__attribute__((used)) static int hal2_playback_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_hal2 *hal2 = snd_pcm_substream_chip(substream);

 switch (cmd) {
 case 129:
  hal2->dac.pcm_indirect.hw_io = hal2->dac.buffer_dma;
  hal2->dac.pcm_indirect.hw_data = 0;
  substream->ops->ack(substream);
  hal2_start_dac(hal2);
  break;
 case 128:
  hal2_stop_dac(hal2);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
