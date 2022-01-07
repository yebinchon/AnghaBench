
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_user {struct snd_timer_user* tqueue; struct snd_timer_user* queue; scalar_t__ timeri; } ;
struct inode {int dummy; } ;
struct file {struct snd_timer_user* private_data; } ;


 int kfree (struct snd_timer_user*) ;
 int snd_timer_close (scalar_t__) ;

__attribute__((used)) static int snd_timer_user_release(struct inode *inode, struct file *file)
{
 struct snd_timer_user *tu;

 if (file->private_data) {
  tu = file->private_data;
  file->private_data = ((void*)0);
  if (tu->timeri)
   snd_timer_close(tu->timeri);
  kfree(tu->queue);
  kfree(tu->tqueue);
  kfree(tu);
 }
 return 0;
}
