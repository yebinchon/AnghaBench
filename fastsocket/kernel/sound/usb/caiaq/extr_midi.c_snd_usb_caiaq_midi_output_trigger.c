
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_caiaqdev {struct snd_rawmidi_substream* midi_out_substream; int midi_out_active; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_usb_caiaqdev* private_data; } ;


 int snd_usb_caiaq_midi_send (struct snd_usb_caiaqdev*,struct snd_rawmidi_substream*) ;

__attribute__((used)) static void snd_usb_caiaq_midi_output_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct snd_usb_caiaqdev *dev = substream->rmidi->private_data;

 if (up) {
  dev->midi_out_substream = substream;
  if (!dev->midi_out_active)
   snd_usb_caiaq_midi_send(dev, substream);
 } else {
  dev->midi_out_substream = ((void*)0);
 }
}
