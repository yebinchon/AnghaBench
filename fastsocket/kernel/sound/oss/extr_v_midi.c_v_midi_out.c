
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t pair_mididev; scalar_t__ input_opened; int my_mididev; int (* midi_input_intr ) (int ,unsigned char) ;} ;
typedef TYPE_1__ vmidi_devc ;
struct TYPE_4__ {TYPE_1__* devc; } ;


 int ENXIO ;
 int MIDIbuf_avail (int ) ;
 TYPE_2__** midi_devs ;
 int stub1 (int ,unsigned char) ;

__attribute__((used)) static int v_midi_out (int dev, unsigned char midi_byte)
{
 vmidi_devc *devc = midi_devs[dev]->devc;
 vmidi_devc *pdevc;

 if (devc == ((void*)0))
  return -ENXIO;

 pdevc = midi_devs[devc->pair_mididev]->devc;
 if (pdevc->input_opened > 0){
  if (MIDIbuf_avail(pdevc->my_mididev) > 500)
   return 0;
  pdevc->midi_input_intr (pdevc->my_mididev, midi_byte);
 }
 return 1;
}
