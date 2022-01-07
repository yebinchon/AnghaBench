
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_riptide {struct snd_pcm_substream** playback_substream; } ;
struct snd_pcm_substream {int number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct pcmhw* private_data; int hw; } ;
struct pcmhw {int* intdec; int state; int source; int id; int paths; } ;


 int GFP_KERNEL ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int ST_STOP ;
 struct pcmhw* kzalloc (int,int ) ;
 int * lbus_play_paths ;
 int * play_ids ;
 int * play_sources ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 struct snd_riptide* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_riptide_playback ;

__attribute__((used)) static int snd_riptide_playback_open(struct snd_pcm_substream *substream)
{
 struct snd_riptide *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct pcmhw *data;
 int sub_num = substream->number;

 chip->playback_substream[sub_num] = substream;
 runtime->hw = snd_riptide_playback;
 data = kzalloc(sizeof(struct pcmhw), GFP_KERNEL);
 data->paths = lbus_play_paths[sub_num];
 data->id = play_ids[sub_num];
 data->source = play_sources[sub_num];
 data->intdec[0] = 0xff;
 data->intdec[1] = 0xff;
 data->state = ST_STOP;
 runtime->private_data = data;
 return snd_pcm_hw_constraint_integer(runtime,
          SNDRV_PCM_HW_PARAM_PERIODS);
}
