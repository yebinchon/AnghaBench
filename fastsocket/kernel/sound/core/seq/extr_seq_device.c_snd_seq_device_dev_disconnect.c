
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_device {int id; } ;
struct snd_device {struct snd_seq_device* device_data; } ;
struct ops_list {int dummy; } ;


 int ENOENT ;
 struct ops_list* find_driver (int ,int ) ;
 int free_device (struct snd_seq_device*,struct ops_list*) ;
 int unlock_driver (struct ops_list*) ;

__attribute__((used)) static int snd_seq_device_dev_disconnect(struct snd_device *device)
{
 struct snd_seq_device *dev = device->device_data;
 struct ops_list *ops;

 ops = find_driver(dev->id, 0);
 if (ops == ((void*)0))
  return -ENOENT;

 free_device(dev, ops);

 unlock_driver(ops);
 return 0;
}
