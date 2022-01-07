
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_miro {int aci_mutex; } ;


 int EINTR ;
 int aci_read (struct snd_miro*) ;
 int aci_write (struct snd_miro*,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int aci_cmd(struct snd_miro * miro, int write1, int write2, int write3)
{
 int write[] = {write1, write2, write3};
 int value, i;

 if (mutex_lock_interruptible(&miro->aci_mutex))
  return -EINTR;

 for (i=0; i<3; i++) {
  if (write[i]< 0 || write[i] > 255)
   break;
  else {
   value = aci_write(miro, write[i]);
   if (value < 0)
    goto out;
  }
 }

 value = aci_read(miro);

out: mutex_unlock(&miro->aci_mutex);
 return value;
}
