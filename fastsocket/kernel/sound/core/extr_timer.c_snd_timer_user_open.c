
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_user {int ticks; int queue_size; int * queue; int tread_sem; int qchange_sleep; int qlock; } ;
struct snd_timer_read {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct snd_timer_user* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 int kfree (struct snd_timer_user*) ;
 int * kmalloc (int,int ) ;
 struct snd_timer_user* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int snd_timer_user_open(struct inode *inode, struct file *file)
{
 struct snd_timer_user *tu;
 int err;

 err = nonseekable_open(inode, file);
 if (err < 0)
  return err;

 tu = kzalloc(sizeof(*tu), GFP_KERNEL);
 if (tu == ((void*)0))
  return -ENOMEM;
 spin_lock_init(&tu->qlock);
 init_waitqueue_head(&tu->qchange_sleep);
 mutex_init(&tu->tread_sem);
 tu->ticks = 1;
 tu->queue_size = 128;
 tu->queue = kmalloc(tu->queue_size * sizeof(struct snd_timer_read),
       GFP_KERNEL);
 if (tu->queue == ((void*)0)) {
  kfree(tu);
  return -ENOMEM;
 }
 file->private_data = tu;
 return 0;
}
