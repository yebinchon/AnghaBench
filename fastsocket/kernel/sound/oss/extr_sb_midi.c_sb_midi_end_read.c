
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ intr_active; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_5__ {TYPE_1__* devc; } ;


 int ENXIO ;
 TYPE_3__** midi_devs ;
 int sb_dsp_reset (TYPE_1__*) ;

__attribute__((used)) static int sb_midi_end_read(int dev)
{
 sb_devc *devc = midi_devs[dev]->devc;

 if (devc == ((void*)0))
  return -ENXIO;

 sb_dsp_reset(devc);
 devc->intr_active = 0;
 return 0;
}
