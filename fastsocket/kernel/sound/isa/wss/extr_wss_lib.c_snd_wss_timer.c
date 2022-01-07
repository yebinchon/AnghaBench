
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_wss {struct snd_timer* timer; TYPE_1__* card; } ;
struct snd_timer_id {int device; scalar_t__ subdevice; int card; int dev_sclass; int dev_class; } ;
struct snd_timer {int hw; int private_free; struct snd_wss* private_data; int name; } ;
struct TYPE_2__ {int number; } ;


 int SNDRV_TIMER_CLASS_CARD ;
 int SNDRV_TIMER_SCLASS_NONE ;
 int snd_timer_new (TYPE_1__*,char*,struct snd_timer_id*,struct snd_timer**) ;
 int snd_wss_chip_id (struct snd_wss*) ;
 int snd_wss_timer_free ;
 int snd_wss_timer_table ;
 int strcpy (int ,int ) ;

int snd_wss_timer(struct snd_wss *chip, int device, struct snd_timer **rtimer)
{
 struct snd_timer *timer;
 struct snd_timer_id tid;
 int err;


 tid.dev_class = SNDRV_TIMER_CLASS_CARD;
 tid.dev_sclass = SNDRV_TIMER_SCLASS_NONE;
 tid.card = chip->card->number;
 tid.device = device;
 tid.subdevice = 0;
 if ((err = snd_timer_new(chip->card, "CS4231", &tid, &timer)) < 0)
  return err;
 strcpy(timer->name, snd_wss_chip_id(chip));
 timer->private_data = chip;
 timer->private_free = snd_wss_timer_free;
 timer->hw = snd_wss_timer_table;
 chip->timer = timer;
 if (rtimer)
  *rtimer = timer;
 return 0;
}
