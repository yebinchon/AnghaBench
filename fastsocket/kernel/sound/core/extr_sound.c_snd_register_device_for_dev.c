
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_minor {int type; int card; int device; int dev; void* private_data; struct file_operations const* f_ops; } ;
struct snd_card {int number; } ;
struct file_operations {int dummy; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MKDEV (int ,int) ;
 int PTR_ERR (int ) ;
 int device_create (int ,struct device*,int ,void*,char*,char const*) ;
 int kfree (struct snd_minor*) ;
 struct snd_minor* kmalloc (int,int ) ;
 int major ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_find_free_minor () ;
 int snd_kernel_minor (int,struct snd_card*,int) ;
 struct snd_minor** snd_minors ;
 int sound_class ;
 int sound_mutex ;

int snd_register_device_for_dev(int type, struct snd_card *card, int dev,
    const struct file_operations *f_ops,
    void *private_data,
    const char *name, struct device *device)
{
 int minor;
 struct snd_minor *preg;

 if (snd_BUG_ON(!name))
  return -EINVAL;
 preg = kmalloc(sizeof *preg, GFP_KERNEL);
 if (preg == ((void*)0))
  return -ENOMEM;
 preg->type = type;
 preg->card = card ? card->number : -1;
 preg->device = dev;
 preg->f_ops = f_ops;
 preg->private_data = private_data;
 mutex_lock(&sound_mutex);



 minor = snd_kernel_minor(type, card, dev);
 if (minor >= 0 && snd_minors[minor])
  minor = -EBUSY;

 if (minor < 0) {
  mutex_unlock(&sound_mutex);
  kfree(preg);
  return minor;
 }
 snd_minors[minor] = preg;
 preg->dev = device_create(sound_class, device, MKDEV(major, minor),
      private_data, "%s", name);
 if (IS_ERR(preg->dev)) {
  snd_minors[minor] = ((void*)0);
  mutex_unlock(&sound_mutex);
  minor = PTR_ERR(preg->dev);
  kfree(preg);
  return minor;
 }

 mutex_unlock(&sound_mutex);
 return 0;
}
