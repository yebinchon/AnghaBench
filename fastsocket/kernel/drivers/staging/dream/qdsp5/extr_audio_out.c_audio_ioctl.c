
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_audio_stats {int channel_count; int buffer_count; int * unused; int sample_rate; int buffer_size; int byte_count; } ;
struct msm_audio_config {int channel_count; int buffer_count; int * unused; int sample_rate; int buffer_size; int byte_count; } ;
struct file {struct audio* private_data; } ;
struct audio {unsigned long volume; int stopped; int out_channel_mode; int lock; int out_sample_rate; int write_lock; int wait; int dsp_lock; scalar_t__ running; int out_bytes; } ;
typedef int stats ;
typedef int config ;




 unsigned int AUDIO_GET_STATS ;

 unsigned int AUDIO_SET_VOLUME ;


 int AUDPP_CMD_PCM_INTF_MONO_V ;
 int AUDPP_CMD_PCM_INTF_STEREO_V ;
 int BUFSZ ;
 long EFAULT ;
 int EINVAL ;
 int EV_IOCTL ;
 int LOG (int ,unsigned int) ;
 int atomic_read (int *) ;
 int audio_disable (struct audio*) ;
 int audio_enable (struct audio*) ;
 int audio_flush (struct audio*) ;
 int audpp_set_volume_and_pan (int,unsigned long,int ) ;
 int copy_from_user (struct msm_audio_stats*,void*,int) ;
 scalar_t__ copy_to_user (void*,struct msm_audio_stats*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static long audio_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 struct audio *audio = file->private_data;
 int rc;

 if (cmd == AUDIO_GET_STATS) {
  struct msm_audio_stats stats;
  stats.byte_count = atomic_read(&audio->out_bytes);
  if (copy_to_user((void*) arg, &stats, sizeof(stats)))
   return -EFAULT;
  return 0;
 }
 if (cmd == AUDIO_SET_VOLUME) {
  unsigned long flags;
  spin_lock_irqsave(&audio->dsp_lock, flags);
  audio->volume = arg;
  if (audio->running)
   audpp_set_volume_and_pan(6, arg, 0);
  spin_unlock_irqrestore(&audio->dsp_lock, flags);
 }

 LOG(EV_IOCTL, cmd);
 mutex_lock(&audio->lock);
 switch (cmd) {
 case 129:
  rc = audio_enable(audio);
  break;
 case 128:
  rc = audio_disable(audio);
  audio->stopped = 1;
  break;
 case 132:
  if (audio->stopped) {





   wake_up(&audio->wait);
   mutex_lock(&audio->write_lock);
   audio_flush(audio);
   mutex_unlock(&audio->write_lock);
  }
 case 130: {
  struct msm_audio_config config;
  if (copy_from_user(&config, (void*) arg, sizeof(config))) {
   rc = -EFAULT;
   break;
  }
  if (config.channel_count == 1) {
   config.channel_count = AUDPP_CMD_PCM_INTF_MONO_V;
  } else if (config.channel_count == 2) {
   config.channel_count= AUDPP_CMD_PCM_INTF_STEREO_V;
  } else {
   rc = -EINVAL;
   break;
  }
  audio->out_sample_rate = config.sample_rate;
  audio->out_channel_mode = config.channel_count;
  rc = 0;
  break;
 }
 case 131: {
  struct msm_audio_config config;
  config.buffer_size = BUFSZ;
  config.buffer_count = 2;
  config.sample_rate = audio->out_sample_rate;
  if (audio->out_channel_mode == AUDPP_CMD_PCM_INTF_MONO_V) {
   config.channel_count = 1;
  } else {
   config.channel_count = 2;
  }
  config.unused[0] = 0;
  config.unused[1] = 0;
  config.unused[2] = 0;
  config.unused[3] = 0;
  if (copy_to_user((void*) arg, &config, sizeof(config))) {
   rc = -EFAULT;
  } else {
   rc = 0;
  }
  break;
 }
 default:
  rc = -EINVAL;
 }
 mutex_unlock(&audio->lock);
 return rc;
}
