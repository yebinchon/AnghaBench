
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_card* device_data; } ;
struct snd_card {int number; } ;


 int ENXIO ;
 int SNDRV_CARDS ;
 int SNDRV_DEVICE_TYPE_CONTROL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_f_ops ;
 int snd_register_device (int ,struct snd_card*,int,int *,struct snd_card*,char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int snd_ctl_dev_register(struct snd_device *device)
{
 struct snd_card *card = device->device_data;
 int err, cardnum;
 char name[16];

 if (snd_BUG_ON(!card))
  return -ENXIO;
 cardnum = card->number;
 if (snd_BUG_ON(cardnum < 0 || cardnum >= SNDRV_CARDS))
  return -ENXIO;
 sprintf(name, "controlC%i", cardnum);
 if ((err = snd_register_device(SNDRV_DEVICE_TYPE_CONTROL, card, -1,
           &snd_ctl_f_ops, card, name)) < 0)
  return err;
 return 0;
}
