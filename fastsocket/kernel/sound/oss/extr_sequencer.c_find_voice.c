
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_voice; unsigned short* map; } ;
struct TYPE_4__ {TYPE_1__ alloc; } ;


 TYPE_2__** synth_devs ;

__attribute__((used)) static int find_voice(int dev, int chn, int note)
{
 unsigned short key;
 int i;

 key = (chn << 8) | (note + 1);
 for (i = 0; i < synth_devs[dev]->alloc.max_voice; i++)
  if (synth_devs[dev]->alloc.map[i] == key)
   return i;
 return -1;
}
