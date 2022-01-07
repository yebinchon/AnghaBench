
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_jack {struct snd_jack* id; int input_dev; scalar_t__ registered; int (* private_free ) (struct snd_jack*) ;} ;
struct snd_device {struct snd_jack* device_data; } ;


 int input_free_device (int ) ;
 int input_unregister_device (int ) ;
 int kfree (struct snd_jack*) ;
 int stub1 (struct snd_jack*) ;

__attribute__((used)) static int snd_jack_dev_free(struct snd_device *device)
{
 struct snd_jack *jack = device->device_data;

 if (jack->private_free)
  jack->private_free(jack);



 if (jack->registered)
  input_unregister_device(jack->input_dev);
 else
  input_free_device(jack->input_dev);

 kfree(jack->id);
 kfree(jack);

 return 0;
}
