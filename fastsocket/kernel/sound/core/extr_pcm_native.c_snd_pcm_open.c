
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wait_queue_t ;
struct snd_pcm_file {int dummy; } ;
struct snd_pcm {TYPE_1__* card; int open_mutex; int open_wait; } ;
struct file {int f_flags; } ;
struct TYPE_3__ {int module; scalar_t__ shutdown; } ;


 int EAGAIN ;
 int EBUSY ;
 int EFAULT ;
 int ENODEV ;
 int ERESTARTSYS ;
 int O_NONBLOCK ;
 int TASK_INTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int init_waitqueue_entry (int *,int ) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int snd_card_file_add (TYPE_1__*,struct file*) ;
 int snd_card_file_remove (TYPE_1__*,struct file*) ;
 int snd_pcm_open_file (struct file*,struct snd_pcm*,int,struct snd_pcm_file**) ;
 int try_module_get (int ) ;

__attribute__((used)) static int snd_pcm_open(struct file *file, struct snd_pcm *pcm, int stream)
{
 int err;
 struct snd_pcm_file *pcm_file;
 wait_queue_t wait;

 if (pcm == ((void*)0)) {
  err = -ENODEV;
  goto __error1;
 }
 err = snd_card_file_add(pcm->card, file);
 if (err < 0)
  goto __error1;
 if (!try_module_get(pcm->card->module)) {
  err = -EFAULT;
  goto __error2;
 }
 init_waitqueue_entry(&wait, current);
 add_wait_queue(&pcm->open_wait, &wait);
 mutex_lock(&pcm->open_mutex);
 while (1) {
  err = snd_pcm_open_file(file, pcm, stream, &pcm_file);
  if (err >= 0)
   break;
  if (err == -EAGAIN) {
   if (file->f_flags & O_NONBLOCK) {
    err = -EBUSY;
    break;
   }
  } else
   break;
  set_current_state(TASK_INTERRUPTIBLE);
  mutex_unlock(&pcm->open_mutex);
  schedule();
  mutex_lock(&pcm->open_mutex);
  if (pcm->card->shutdown) {
   err = -ENODEV;
   break;
  }
  if (signal_pending(current)) {
   err = -ERESTARTSYS;
   break;
  }
 }
 remove_wait_queue(&pcm->open_wait, &wait);
 mutex_unlock(&pcm->open_mutex);
 if (err < 0)
  goto __error;
 return err;

      __error:
 module_put(pcm->card->module);
      __error2:
       snd_card_file_remove(pcm->card, file);
      __error1:
       return err;
}
