
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_minor {int type; void* private_data; } ;


 unsigned int ARRAY_SIZE (struct snd_minor**) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_minor** snd_minors ;
 int sound_mutex ;

void *snd_lookup_minor_data(unsigned int minor, int type)
{
 struct snd_minor *mreg;
 void *private_data;

 if (minor >= ARRAY_SIZE(snd_minors))
  return ((void*)0);
 mutex_lock(&sound_mutex);
 mreg = snd_minors[minor];
 if (mreg && mreg->type == type)
  private_data = mreg->private_data;
 else
  private_data = ((void*)0);
 mutex_unlock(&sound_mutex);
 return private_data;
}
