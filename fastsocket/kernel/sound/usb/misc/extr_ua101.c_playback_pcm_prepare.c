
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ buffer_pos; scalar_t__ period_pos; } ;
struct ua101 {TYPE_2__ playback; int states; int alsa_playback_wait; int mutex; } ;
struct snd_pcm_substream {TYPE_1__* runtime; struct ua101* private_data; } ;
struct TYPE_3__ {scalar_t__ delay; } ;


 int DISCONNECTED ;
 int EIO ;
 int ENODEV ;
 int PLAYBACK_URB_COMPLETED ;
 int USB_PLAYBACK_RUNNING ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int start_usb_capture (struct ua101*) ;
 int start_usb_playback (struct ua101*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int playback_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct ua101 *ua = substream->private_data;
 int err;

 mutex_lock(&ua->mutex);
 err = start_usb_capture(ua);
 if (err >= 0)
  err = start_usb_playback(ua);
 mutex_unlock(&ua->mutex);
 if (err < 0)
  return err;


 wait_event(ua->alsa_playback_wait,
     test_bit(PLAYBACK_URB_COMPLETED, &ua->states) ||
     !test_bit(USB_PLAYBACK_RUNNING, &ua->states));
 if (test_bit(DISCONNECTED, &ua->states))
  return -ENODEV;
 if (!test_bit(USB_PLAYBACK_RUNNING, &ua->states))
  return -EIO;

 substream->runtime->delay = 0;
 ua->playback.period_pos = 0;
 ua->playback.buffer_pos = 0;
 return 0;
}
