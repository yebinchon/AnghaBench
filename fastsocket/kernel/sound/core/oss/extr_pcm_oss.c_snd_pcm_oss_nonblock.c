
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_lock; int f_flags; } ;


 int O_NONBLOCK ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_pcm_oss_nonblock(struct file * file)
{
 spin_lock(&file->f_lock);
 file->f_flags |= O_NONBLOCK;
 spin_unlock(&file->f_lock);
 return 0;
}
