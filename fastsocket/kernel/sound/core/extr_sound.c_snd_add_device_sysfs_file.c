
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_card {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int EINVAL ;
 int device_create_file (struct device*,struct device_attribute*) ;
 int find_snd_minor (int,struct snd_card*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__** snd_minors ;
 int sound_mutex ;

int snd_add_device_sysfs_file(int type, struct snd_card *card, int dev,
         struct device_attribute *attr)
{
 int minor, ret = -EINVAL;
 struct device *d;

 mutex_lock(&sound_mutex);
 minor = find_snd_minor(type, card, dev);
 if (minor >= 0 && (d = snd_minors[minor]->dev) != ((void*)0))
  ret = device_create_file(d, attr);
 mutex_unlock(&sound_mutex);
 return ret;

}
