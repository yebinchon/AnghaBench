
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct audio_in* private_data; } ;
struct audio_in {int lock; scalar_t__ opened; int * audpre; int * audrec; } ;


 int audio_flush (struct audio_in*) ;
 int audio_in_disable (struct audio_in*) ;
 int msm_adsp_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int audio_in_release(struct inode *inode, struct file *file)
{
 struct audio_in *audio = file->private_data;

 mutex_lock(&audio->lock);
 audio_in_disable(audio);
 audio_flush(audio);
 msm_adsp_put(audio->audrec);
 msm_adsp_put(audio->audpre);
 audio->audrec = ((void*)0);
 audio->audpre = ((void*)0);
 audio->opened = 0;
 mutex_unlock(&audio->lock);
 return 0;
}
