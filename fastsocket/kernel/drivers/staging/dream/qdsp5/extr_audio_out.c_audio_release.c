
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct audio* private_data; } ;
struct audio {int lock; scalar_t__ opened; } ;


 int EV_OPEN ;
 int LOG (int ,int ) ;
 int PWRSINK_AUDIO ;
 int audio_disable (struct audio*) ;
 int audio_flush (struct audio*) ;
 int htc_pwrsink_set (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int audio_release(struct inode *inode, struct file *file)
{
 struct audio *audio = file->private_data;

 LOG(EV_OPEN, 0);
 mutex_lock(&audio->lock);
 audio_disable(audio);
 audio_flush(audio);
 audio->opened = 0;
 mutex_unlock(&audio->lock);
 htc_pwrsink_set(PWRSINK_AUDIO, 0);
 return 0;
}
