
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_id {int card; int device; scalar_t__ subdevice; int dev_sclass; int dev_class; } ;
struct snd_timer {int dummy; } ;


 int SNDRV_TIMER_CLASS_GLOBAL ;
 int SNDRV_TIMER_SCLASS_NONE ;
 int snd_timer_new (int *,char*,struct snd_timer_id*,struct snd_timer**) ;

int snd_timer_global_new(char *id, int device, struct snd_timer **rtimer)
{
 struct snd_timer_id tid;

 tid.dev_class = SNDRV_TIMER_CLASS_GLOBAL;
 tid.dev_sclass = SNDRV_TIMER_SCLASS_NONE;
 tid.card = -1;
 tid.device = device;
 tid.subdevice = 0;
 return snd_timer_new(((void*)0), id, &tid, rtimer);
}
