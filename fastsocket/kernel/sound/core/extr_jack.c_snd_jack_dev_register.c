
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_jack {char* id; int registered; TYPE_2__* input_dev; int name; } ;
struct snd_device {struct snd_card* card; struct snd_jack* device_data; } ;
struct snd_card {char* shortname; } ;
struct TYPE_3__ {scalar_t__ parent; } ;
struct TYPE_4__ {TYPE_1__ dev; int name; } ;


 int input_register_device (TYPE_2__*) ;
 scalar_t__ snd_card_get_device_link (struct snd_card*) ;
 int snprintf (int ,int,char*,char*,char*) ;

__attribute__((used)) static int snd_jack_dev_register(struct snd_device *device)
{
 struct snd_jack *jack = device->device_data;
 struct snd_card *card = device->card;
 int err;

 snprintf(jack->name, sizeof(jack->name), "%s %s",
   card->shortname, jack->id);
 jack->input_dev->name = jack->name;


 if (!jack->input_dev->dev.parent)
  jack->input_dev->dev.parent = snd_card_get_device_link(card);

 err = input_register_device(jack->input_dev);
 if (err == 0)
  jack->registered = 1;

 return err;
}
