
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int channels; struct snd_pcm_substream* substream; } ;
struct ua101 {int mutex; int states; int packets_per_second; int rate; TYPE_1__ capture; } ;
struct snd_pcm_substream {TYPE_3__* runtime; struct ua101* private_data; } ;
struct TYPE_5__ {int fifo_size; } ;
struct TYPE_6__ {TYPE_2__ hw; int delay; } ;


 int ALSA_CAPTURE_OPEN ;
 int DIV_ROUND_CLOSEST (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int set_stream_hw (struct ua101*,struct snd_pcm_substream*,int ) ;
 int start_usb_capture (struct ua101*) ;

__attribute__((used)) static int capture_pcm_open(struct snd_pcm_substream *substream)
{
 struct ua101 *ua = substream->private_data;
 int err;

 ua->capture.substream = substream;
 err = set_stream_hw(ua, substream, ua->capture.channels);
 if (err < 0)
  return err;
 substream->runtime->hw.fifo_size =
  DIV_ROUND_CLOSEST(ua->rate, ua->packets_per_second);
 substream->runtime->delay = substream->runtime->hw.fifo_size;

 mutex_lock(&ua->mutex);
 err = start_usb_capture(ua);
 if (err >= 0)
  set_bit(ALSA_CAPTURE_OPEN, &ua->states);
 mutex_unlock(&ua->mutex);
 return err;
}
