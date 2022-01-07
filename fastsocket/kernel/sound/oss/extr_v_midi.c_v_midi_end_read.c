
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ intr_active; } ;
typedef TYPE_1__ vmidi_devc ;
struct TYPE_4__ {TYPE_1__* devc; } ;


 int ENXIO ;
 TYPE_2__** midi_devs ;

__attribute__((used)) static int v_midi_end_read (int dev)
{
 vmidi_devc *devc = midi_devs[dev]->devc;
 if (devc == ((void*)0))
  return -ENXIO;

 devc->intr_active = 0;
 return 0;
}
