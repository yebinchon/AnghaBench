
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_usb_midi_out_endpoint {int dummy; } ;
typedef int finish_data ;


 int send_bulk_static_data (struct snd_usb_midi_out_endpoint*,int const*,int) ;

__attribute__((used)) static void snd_usbmidi_emagic_finish_out(struct snd_usb_midi_out_endpoint* ep)
{
 static const u8 finish_data[] = {

  0xf0,
  0x00, 0x20, 0x31,
  0x64,
  0x10,
  0x00,
  0x7f,
  0x40,
  0xf7
 };
 send_bulk_static_data(ep, finish_data, sizeof(finish_data));
}
