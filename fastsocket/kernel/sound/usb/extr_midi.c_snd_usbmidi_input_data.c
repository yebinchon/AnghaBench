
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct usbmidi_in_port {TYPE_2__* substream; } ;
struct snd_usb_midi_in_endpoint {TYPE_1__* umidi; struct usbmidi_in_port* ports; } ;
struct TYPE_4__ {int number; } ;
struct TYPE_3__ {int input_triggered; } ;


 int snd_printd (char*,int) ;
 int snd_rawmidi_receive (TYPE_2__*,int *,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void snd_usbmidi_input_data(struct snd_usb_midi_in_endpoint* ep, int portidx,
       uint8_t* data, int length)
{
 struct usbmidi_in_port* port = &ep->ports[portidx];

 if (!port->substream) {
  snd_printd("unexpected port %d!\n", portidx);
  return;
 }
 if (!test_bit(port->substream->number, &ep->umidi->input_triggered))
  return;
 snd_rawmidi_receive(port->substream, data, length);
}
