
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio {int read_lock; int read_wait; int write_lock; int write_wait; } ;


 int audio_flush (struct audio*) ;
 int audio_flush_pcm_buf (struct audio*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void audio_ioport_reset(struct audio *audio)
{




 wake_up(&audio->write_wait);
 mutex_lock(&audio->write_lock);
 audio_flush(audio);
 mutex_unlock(&audio->write_lock);
 wake_up(&audio->read_wait);
 mutex_lock(&audio->read_lock);
 audio_flush_pcm_buf(audio);
 mutex_unlock(&audio->read_lock);
}
