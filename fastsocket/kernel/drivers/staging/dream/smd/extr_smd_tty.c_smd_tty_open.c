
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int index; struct smd_tty_info* driver_data; } ;
struct smd_tty_info {scalar_t__ ch; struct tty_struct* tty; int open_count; int wake_lock; } ;
struct file {int dummy; } ;


 int ENODEV ;
 int WAKE_LOCK_SUSPEND ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smd_kick (scalar_t__) ;
 int smd_open (char const*,scalar_t__*,struct smd_tty_info*,int ) ;
 struct smd_tty_info* smd_tty ;
 int smd_tty_lock ;
 int smd_tty_notify ;
 int wake_lock_init (int *,int ,char const*) ;

__attribute__((used)) static int smd_tty_open(struct tty_struct *tty, struct file *f)
{
 int res = 0;
 int n = tty->index;
 struct smd_tty_info *info;
 const char *name;

 if (n == 0) {
  name = "SMD_DS";
 } else if (n == 27) {
  name = "SMD_GPSNMEA";
 } else {
  return -ENODEV;
 }

 info = smd_tty + n;

 mutex_lock(&smd_tty_lock);
 wake_lock_init(&info->wake_lock, WAKE_LOCK_SUSPEND, name);
 tty->driver_data = info;

 if (info->open_count++ == 0) {
  info->tty = tty;
  if (info->ch) {
   smd_kick(info->ch);
  } else {
   res = smd_open(name, &info->ch, info, smd_tty_notify);
  }
 }
 mutex_unlock(&smd_tty_lock);

 return res;
}
