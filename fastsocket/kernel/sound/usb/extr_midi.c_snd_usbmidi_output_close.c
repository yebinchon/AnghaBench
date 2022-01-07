
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_midi {int iface; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_usb_midi* private_data; } ;


 int substream_open (struct snd_rawmidi_substream*,int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int snd_usbmidi_output_close(struct snd_rawmidi_substream *substream)
{
 struct snd_usb_midi* umidi = substream->rmidi->private_data;

 substream_open(substream, 0);
 usb_autopm_put_interface(umidi->iface);
 return 0;
}
