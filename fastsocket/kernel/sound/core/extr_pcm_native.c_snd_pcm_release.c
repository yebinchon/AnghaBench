
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm* pcm; } ;
struct snd_pcm_file {struct snd_pcm_substream* substream; } ;
struct snd_pcm {TYPE_1__* card; int open_wait; int open_mutex; } ;
struct inode {int dummy; } ;
struct file {struct snd_pcm_file* private_data; } ;
struct TYPE_2__ {int module; } ;


 int ENXIO ;
 int kfree (struct snd_pcm_file*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_card_file_remove (TYPE_1__*,struct file*) ;
 int snd_pcm_release_substream (struct snd_pcm_substream*) ;
 int wake_up (int *) ;

__attribute__((used)) static int snd_pcm_release(struct inode *inode, struct file *file)
{
 struct snd_pcm *pcm;
 struct snd_pcm_substream *substream;
 struct snd_pcm_file *pcm_file;

 pcm_file = file->private_data;
 substream = pcm_file->substream;
 if (snd_BUG_ON(!substream))
  return -ENXIO;
 pcm = substream->pcm;
 mutex_lock(&pcm->open_mutex);
 snd_pcm_release_substream(substream);
 kfree(pcm_file);
 mutex_unlock(&pcm->open_mutex);
 wake_up(&pcm->open_wait);
 module_put(pcm->card->module);
 snd_card_file_remove(pcm->card, file);
 return 0;
}
