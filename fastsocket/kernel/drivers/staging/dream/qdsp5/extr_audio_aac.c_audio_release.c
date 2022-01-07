
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct audio* private_data; } ;
struct audio {int pcm_buf_count; int lock; scalar_t__ pcm_feedback; int * read_data; int read_phys; TYPE_1__* in; int * data; int phys; scalar_t__ reserved; scalar_t__ opened; int * audplay; } ;
struct TYPE_2__ {int size; } ;


 int DMASZ ;
 int audio_disable (struct audio*) ;
 int audio_flush (struct audio*) ;
 int audio_flush_pcm_buf (struct audio*) ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int dprintk (char*) ;
 int msm_adsp_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int audio_release(struct inode *inode, struct file *file)
{
 struct audio *audio = file->private_data;

 dprintk("audio_release()\n");

 mutex_lock(&audio->lock);
 audio_disable(audio);
 audio_flush(audio);
 audio_flush_pcm_buf(audio);
 msm_adsp_put(audio->audplay);
 audio->audplay = ((void*)0);
 audio->opened = 0;
 audio->reserved = 0;
 dma_free_coherent(((void*)0), DMASZ, audio->data, audio->phys);
 audio->data = ((void*)0);
 if (audio->read_data != ((void*)0)) {
  dma_free_coherent(((void*)0),
      audio->in[0].size * audio->pcm_buf_count,
      audio->read_data, audio->read_phys);
  audio->read_data = ((void*)0);
 }
 audio->pcm_feedback = 0;
 mutex_unlock(&audio->lock);
 return 0;
}
