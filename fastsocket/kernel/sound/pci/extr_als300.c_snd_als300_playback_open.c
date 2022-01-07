
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_als300_substream_data* private_data; int hw; } ;
struct snd_als300_substream_data {int block_counter_register; int control_register; } ;
struct snd_als300 {struct snd_pcm_substream* playback_substream; } ;


 int GFP_KERNEL ;
 int PLAYBACK_BLOCK_COUNTER ;
 int PLAYBACK_CONTROL ;
 struct snd_als300_substream_data* kzalloc (int,int ) ;
 int snd_als300_dbgcallenter () ;
 int snd_als300_dbgcallleave () ;
 int snd_als300_playback_hw ;
 struct snd_als300* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_als300_playback_open(struct snd_pcm_substream *substream)
{
 struct snd_als300 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_als300_substream_data *data = kzalloc(sizeof(*data),
        GFP_KERNEL);

 snd_als300_dbgcallenter();
 chip->playback_substream = substream;
 runtime->hw = snd_als300_playback_hw;
 runtime->private_data = data;
 data->control_register = PLAYBACK_CONTROL;
 data->block_counter_register = PLAYBACK_BLOCK_COUNTER;
 snd_als300_dbgcallleave();
 return 0;
}
