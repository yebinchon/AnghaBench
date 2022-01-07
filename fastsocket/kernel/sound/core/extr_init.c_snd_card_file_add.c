
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_monitor_file {int list; int shutdown_list; int * disconnected_f_op; struct file* file; } ;
struct snd_card {int files_lock; int files_list; scalar_t__ shutdown; } ;
struct file {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct snd_monitor_file*) ;
 struct snd_monitor_file* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int snd_card_file_add(struct snd_card *card, struct file *file)
{
 struct snd_monitor_file *mfile;

 mfile = kmalloc(sizeof(*mfile), GFP_KERNEL);
 if (mfile == ((void*)0))
  return -ENOMEM;
 mfile->file = file;
 mfile->disconnected_f_op = ((void*)0);
 INIT_LIST_HEAD(&mfile->shutdown_list);
 spin_lock(&card->files_lock);
 if (card->shutdown) {
  spin_unlock(&card->files_lock);
  kfree(mfile);
  return -ENODEV;
 }
 list_add(&mfile->list, &card->files_list);
 spin_unlock(&card->files_lock);
 return 0;
}
