
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_user {int timeri; } ;
struct file {struct snd_timer_user* private_data; } ;


 int EBADFD ;
 int snd_timer_pause (int ) ;

__attribute__((used)) static int snd_timer_user_pause(struct file *file)
{
 int err;
 struct snd_timer_user *tu;

 tu = file->private_data;
 if (!tu->timeri)
  return -EBADFD;
 return (err = snd_timer_pause(tu->timeri)) < 0 ? err : 0;
}
