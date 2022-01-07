
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct smd_tty_info* driver_data; } ;
struct smd_tty_info {scalar_t__ open_count; scalar_t__ ch; int wake_lock; scalar_t__ tty; } ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smd_close (scalar_t__) ;
 int smd_tty_lock ;
 int wake_lock_destroy (int *) ;

__attribute__((used)) static void smd_tty_close(struct tty_struct *tty, struct file *f)
{
 struct smd_tty_info *info = tty->driver_data;

 if (info == 0)
  return;

 mutex_lock(&smd_tty_lock);
 if (--info->open_count == 0) {
  info->tty = 0;
  tty->driver_data = 0;
  wake_lock_destroy(&info->wake_lock);
  if (info->ch) {
   smd_close(info->ch);
   info->ch = 0;
  }
 }
 mutex_unlock(&smd_tty_lock);
}
