
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int dev; } ;


 TYPE_1__ ad1848_tmr ;
 TYPE_2__** audio_devs ;
 int sound_timer_init (TYPE_1__*,int ) ;
 int timer_installed ;

__attribute__((used)) static int ad1848_tmr_install(int dev)
{
 if (timer_installed != -1)
  return 0;

 timer_installed = ad1848_tmr.dev = dev;
 sound_timer_init(&ad1848_tmr, audio_devs[dev]->name);

 return 1;
}
