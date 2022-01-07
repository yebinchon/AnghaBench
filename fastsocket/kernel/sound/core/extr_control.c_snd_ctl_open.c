
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ctl_file {int prefer_pcm_subdevice; int prefer_rawmidi_subdevice; int list; int pid; struct snd_card* card; int read_lock; int change_sleep; int events; } ;
struct snd_card {int module; int ctl_files_rwlock; int ctl_files; } ;
struct inode {int dummy; } ;
struct file {struct snd_ctl_file* private_data; } ;
struct TYPE_2__ {int pid; } ;


 int EFAULT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SNDRV_DEVICE_TYPE_CONTROL ;
 TYPE_1__* current ;
 int iminor (struct inode*) ;
 int init_waitqueue_head (int *) ;
 struct snd_ctl_file* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int module_put (int ) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int snd_card_file_add (struct snd_card*,struct file*) ;
 int snd_card_file_remove (struct snd_card*,struct file*) ;
 struct snd_card* snd_lookup_minor_data (int ,int ) ;
 int spin_lock_init (int *) ;
 int try_module_get (int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_ctl_open(struct inode *inode, struct file *file)
{
 unsigned long flags;
 struct snd_card *card;
 struct snd_ctl_file *ctl;
 int err;

 err = nonseekable_open(inode, file);
 if (err < 0)
  return err;

 card = snd_lookup_minor_data(iminor(inode), SNDRV_DEVICE_TYPE_CONTROL);
 if (!card) {
  err = -ENODEV;
  goto __error1;
 }
 err = snd_card_file_add(card, file);
 if (err < 0) {
  err = -ENODEV;
  goto __error1;
 }
 if (!try_module_get(card->module)) {
  err = -EFAULT;
  goto __error2;
 }
 ctl = kzalloc(sizeof(*ctl), GFP_KERNEL);
 if (ctl == ((void*)0)) {
  err = -ENOMEM;
  goto __error;
 }
 INIT_LIST_HEAD(&ctl->events);
 init_waitqueue_head(&ctl->change_sleep);
 spin_lock_init(&ctl->read_lock);
 ctl->card = card;
 ctl->prefer_pcm_subdevice = -1;
 ctl->prefer_rawmidi_subdevice = -1;
 ctl->pid = current->pid;
 file->private_data = ctl;
 write_lock_irqsave(&card->ctl_files_rwlock, flags);
 list_add_tail(&ctl->list, &card->ctl_files);
 write_unlock_irqrestore(&card->ctl_files_rwlock, flags);
 return 0;

      __error:
 module_put(card->module);
      __error2:
 snd_card_file_remove(card, file);
      __error1:
       return err;
}
