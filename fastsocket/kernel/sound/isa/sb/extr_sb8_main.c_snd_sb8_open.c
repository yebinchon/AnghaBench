
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sb {int open; int hardware; struct snd_pcm_substream* capture_substream; struct snd_pcm_substream* playback_substream; int open_lock; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {int rate_max; int channels_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;


 int EAGAIN ;


 int SB_OPEN_PCM ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int hw_constraints_clock ;
 int snd_pcm_hw_constraint_ratnums (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,int *,int ,int,...) ;
 struct snd_sb* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 TYPE_1__ snd_sb8_capture ;
 int snd_sb8_hw_constraint_channels_rate ;
 int snd_sb8_hw_constraint_rate_channels ;
 TYPE_1__ snd_sb8_playback ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sb8_open(struct snd_pcm_substream *substream)
{
 struct snd_sb *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned long flags;

 spin_lock_irqsave(&chip->open_lock, flags);
 if (chip->open) {
  spin_unlock_irqrestore(&chip->open_lock, flags);
  return -EAGAIN;
 }
 chip->open |= SB_OPEN_PCM;
 spin_unlock_irqrestore(&chip->open_lock, flags);
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  chip->playback_substream = substream;
  runtime->hw = snd_sb8_playback;
 } else {
  chip->capture_substream = substream;
  runtime->hw = snd_sb8_capture;
 }
 switch (chip->hardware) {
 case 128:
  runtime->hw.rate_max = 44100;
  runtime->hw.channels_max = 2;
  snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
        snd_sb8_hw_constraint_rate_channels, ((void*)0),
        SNDRV_PCM_HW_PARAM_CHANNELS,
        SNDRV_PCM_HW_PARAM_RATE, -1);
  snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
         snd_sb8_hw_constraint_channels_rate, ((void*)0),
         SNDRV_PCM_HW_PARAM_RATE, -1);
  break;
 case 129:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
   runtime->hw.rate_max = 44100;
  } else {
   runtime->hw.rate_max = 15000;
  }
 default:
  break;
 }
 snd_pcm_hw_constraint_ratnums(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
          &hw_constraints_clock);
 return 0;
}
