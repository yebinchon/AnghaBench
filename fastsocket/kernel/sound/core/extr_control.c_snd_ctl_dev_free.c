
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_device {struct snd_card* device_data; } ;
struct TYPE_2__ {int next; } ;
struct snd_card {int controls_rwsem; TYPE_1__ controls; } ;


 int down_write (int *) ;
 int list_empty (TYPE_1__*) ;
 int snd_ctl_remove (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_kcontrol (int ) ;
 int up_write (int *) ;

__attribute__((used)) static int snd_ctl_dev_free(struct snd_device *device)
{
 struct snd_card *card = device->device_data;
 struct snd_kcontrol *control;

 down_write(&card->controls_rwsem);
 while (!list_empty(&card->controls)) {
  control = snd_kcontrol(card->controls.next);
  snd_ctl_remove(card, control);
 }
 up_write(&card->controls_rwsem);
 return 0;
}
