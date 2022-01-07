
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wait_queue_t ;
struct TYPE_3__ {int (* open ) (struct snd_hwdep*,struct file*) ;int (* release ) (struct snd_hwdep*,struct file*) ;} ;
struct snd_hwdep {scalar_t__ used; TYPE_2__* card; int open_mutex; TYPE_1__ ops; int open_wait; scalar_t__ exclusive; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct snd_hwdep* private_data; } ;
struct TYPE_4__ {int module; scalar_t__ shutdown; } ;


 int EAGAIN ;
 int EBUSY ;
 int EFAULT ;
 int ENODEV ;
 int ENXIO ;
 int ERESTARTSYS ;
 int O_NONBLOCK ;
 int SNDRV_DEVICE_TYPE_HWDEP ;
 int SNDRV_OSS_DEVICE_TYPE_DMFM ;
 int SOUND_MAJOR ;
 int TASK_INTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int imajor (struct inode*) ;
 int iminor (struct inode*) ;
 int init_waitqueue_entry (int *,int ) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int snd_card_file_add (TYPE_2__*,struct file*) ;
 struct snd_hwdep* snd_lookup_minor_data (int ,int ) ;
 struct snd_hwdep* snd_lookup_oss_minor_data (int ,int ) ;
 int snd_major ;
 int stub1 (struct snd_hwdep*,struct file*) ;
 int stub2 (struct snd_hwdep*,struct file*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int snd_hwdep_open(struct inode *inode, struct file * file)
{
 int major = imajor(inode);
 struct snd_hwdep *hw;
 int err;
 wait_queue_t wait;

 if (major == snd_major) {
  hw = snd_lookup_minor_data(iminor(inode),
        SNDRV_DEVICE_TYPE_HWDEP);





 } else
  return -ENXIO;
 if (hw == ((void*)0))
  return -ENODEV;

 if (!try_module_get(hw->card->module))
  return -EFAULT;

 init_waitqueue_entry(&wait, current);
 add_wait_queue(&hw->open_wait, &wait);
 mutex_lock(&hw->open_mutex);
 while (1) {
  if (hw->exclusive && hw->used > 0) {
   err = -EBUSY;
   break;
  }
  if (!hw->ops.open) {
   err = 0;
   break;
  }
  err = hw->ops.open(hw, file);
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
  mutex_unlock(&hw->open_mutex);
  schedule();
  mutex_lock(&hw->open_mutex);
  if (hw->card->shutdown) {
   err = -ENODEV;
   break;
  }
  if (signal_pending(current)) {
   err = -ERESTARTSYS;
   break;
  }
 }
 remove_wait_queue(&hw->open_wait, &wait);
 if (err >= 0) {
  err = snd_card_file_add(hw->card, file);
  if (err >= 0) {
   file->private_data = hw;
   hw->used++;
  } else {
   if (hw->ops.release)
    hw->ops.release(hw, file);
  }
 }
 mutex_unlock(&hw->open_mutex);
 if (err < 0)
  module_put(hw->card->module);
 return err;
}
