
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned short* map; int timestamp; scalar_t__* alloc_times; } ;
struct TYPE_3__ {int (* alloc_voice ) (int,int,int,TYPE_2__*) ;TYPE_2__ alloc; } ;


 int stub1 (int,int,int,TYPE_2__*) ;
 TYPE_1__** synth_devs ;

__attribute__((used)) static int alloc_voice(int dev, int chn, int note)
{
 unsigned short key;
 int voice;

 key = (chn << 8) | (note + 1);

 voice = synth_devs[dev]->alloc_voice(dev, chn, note,
          &synth_devs[dev]->alloc);
 synth_devs[dev]->alloc.map[voice] = key;
 synth_devs[dev]->alloc.alloc_times[voice] =
   synth_devs[dev]->alloc.timestamp++;
 return voice;
}
