
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ctxt {int lock; scalar_t__ opened; } ;
struct inode {int dummy; } ;
struct file {struct snd_ctxt* private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int snd_release(struct inode *inode, struct file *file)
{
 struct snd_ctxt *snd = file->private_data;

 mutex_lock(&snd->lock);
 snd->opened = 0;
 mutex_unlock(&snd->lock);
 return 0;
}
