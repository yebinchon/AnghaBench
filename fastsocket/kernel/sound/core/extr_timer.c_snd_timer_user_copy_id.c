
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer_id {int card; int subdevice; int device; int dev_sclass; int dev_class; } ;
struct snd_timer {int tmr_subdevice; int tmr_device; TYPE_1__* card; int tmr_class; } ;
struct TYPE_2__ {int number; } ;


 int SNDRV_TIMER_SCLASS_NONE ;

__attribute__((used)) static void snd_timer_user_copy_id(struct snd_timer_id *id, struct snd_timer *timer)
{
 id->dev_class = timer->tmr_class;
 id->dev_sclass = SNDRV_TIMER_SCLASS_NONE;
 id->card = timer->card ? timer->card->number : -1;
 id->device = timer->tmr_device;
 id->subdevice = timer->tmr_subdevice;
}
