
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;


 int EINVAL ;
 int MKDEV (int ,int) ;
 int device_destroy (int ,int ) ;
 int find_snd_minor (int,struct snd_card*,int) ;
 int kfree (int *) ;
 int major ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ** snd_minors ;
 int sound_class ;
 int sound_mutex ;

int snd_unregister_device(int type, struct snd_card *card, int dev)
{
 int minor;

 mutex_lock(&sound_mutex);
 minor = find_snd_minor(type, card, dev);
 if (minor < 0) {
  mutex_unlock(&sound_mutex);
  return -EINVAL;
 }

 device_destroy(sound_class, MKDEV(major, minor));

 kfree(snd_minors[minor]);
 snd_minors[minor] = ((void*)0);
 mutex_unlock(&sound_mutex);
 return 0;
}
