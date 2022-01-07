
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {int private_data; } ;


 int VT1724_IRQ_MPU_RX ;
 int vt1724_enable_midi_irq (struct snd_rawmidi_substream*,int ,int) ;
 int vt1724_midi_clear_rx (int ) ;

__attribute__((used)) static int vt1724_midi_input_open(struct snd_rawmidi_substream *s)
{
 vt1724_midi_clear_rx(s->rmidi->private_data);
 vt1724_enable_midi_irq(s, VT1724_IRQ_MPU_RX, 1);
 return 0;
}
