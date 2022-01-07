
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_device {int (* private_free ) (struct snd_seq_device*) ;int list; int id; } ;
struct ops_list {int reg_mutex; int num_devices; } ;


 int EINVAL ;
 int ENXIO ;
 struct ops_list* find_driver (int ,int ) ;
 int free_device (struct snd_seq_device*,struct ops_list*) ;
 int kfree (struct snd_seq_device*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int stub1 (struct snd_seq_device*) ;
 int unlock_driver (struct ops_list*) ;

__attribute__((used)) static int snd_seq_device_free(struct snd_seq_device *dev)
{
 struct ops_list *ops;

 if (snd_BUG_ON(!dev))
  return -EINVAL;

 ops = find_driver(dev->id, 0);
 if (ops == ((void*)0))
  return -ENXIO;


 mutex_lock(&ops->reg_mutex);
 list_del(&dev->list);
 ops->num_devices--;
 mutex_unlock(&ops->reg_mutex);

 free_device(dev, ops);
 if (dev->private_free)
  dev->private_free(dev);
 kfree(dev);

 unlock_driver(ops);

 return 0;
}
