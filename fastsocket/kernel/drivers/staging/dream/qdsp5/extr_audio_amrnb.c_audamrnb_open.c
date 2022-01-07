
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct audio* private_data; } ;
struct audio {int opened; int phys; int volume; int lock; TYPE_1__* out; int * data; scalar_t__ dec_id; int audmgr; int audplay; } ;
struct TYPE_2__ {int addr; int size; int * data; } ;


 int BUFSZ ;
 int DMASZ ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int audamrnb_flush (struct audio*) ;
 int audmgr_disable (int *) ;
 int audmgr_open (int *) ;
 int audplay_adsp_ops_amrnb ;
 int * dma_alloc_coherent (int *,int ,int*,int ) ;
 int dma_free_coherent (int *,int ,int *,int) ;
 int msm_adsp_get (char*,int *,int *,struct audio*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 struct audio the_amrnb_audio ;

__attribute__((used)) static int audamrnb_open(struct inode *inode, struct file *file)
{
 struct audio *audio = &the_amrnb_audio;
 int rc;

 mutex_lock(&audio->lock);

 if (audio->opened) {
  pr_err("audio: busy\n");
  rc = -EBUSY;
  goto done;
 }

 if (!audio->data) {
  audio->data = dma_alloc_coherent(((void*)0), DMASZ,
       &audio->phys, GFP_KERNEL);
  if (!audio->data) {
   pr_err("audio: could not allocate DMA buffers\n");
   rc = -ENOMEM;
   goto done;
  }
 }

 rc = audmgr_open(&audio->audmgr);
 if (rc)
  goto done;

 rc = msm_adsp_get("AUDPLAY0TASK", &audio->audplay,
  &audplay_adsp_ops_amrnb, audio);
 if (rc) {
  pr_err("audio: failed to get audplay0 dsp module\n");
  audmgr_disable(&audio->audmgr);
  dma_free_coherent(((void*)0), DMASZ, audio->data, audio->phys);
  audio->data = ((void*)0);
  goto done;
 }

 audio->dec_id = 0;

 audio->out[0].data = audio->data + 0;
 audio->out[0].addr = audio->phys + 0;
 audio->out[0].size = BUFSZ;

 audio->out[1].data = audio->data + BUFSZ;
 audio->out[1].addr = audio->phys + BUFSZ;
 audio->out[1].size = BUFSZ;

 audio->volume = 0x2000;

 audamrnb_flush(audio);

 file->private_data = audio;
 audio->opened = 1;
 rc = 0;
done:
 mutex_unlock(&audio->lock);
 return rc;
}
