
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct echoaudio {scalar_t__* midi_buffer; TYPE_1__* comm_page; } ;
struct TYPE_2__ {int * midi_input; } ;


 short MIDI_IN_BUFFER_SIZE ;
 scalar_t__ MIDI_IN_SKIP_DATA ;
 short le16_to_cpu (int ) ;
 scalar_t__ mtc_process_data (struct echoaudio*,short) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int midi_service_irq(struct echoaudio *chip)
{
 short int count, midi_byte, i, received;


 count = le16_to_cpu(chip->comm_page->midi_input[0]);

 if (snd_BUG_ON(count >= MIDI_IN_BUFFER_SIZE))
  return 0;


 i = 1;
 received = 0;
 for (i = 1; i <= count; i++) {

  midi_byte = le16_to_cpu(chip->comm_page->midi_input[i]);







  if (mtc_process_data(chip, midi_byte) == MIDI_IN_SKIP_DATA)
   continue;

  chip->midi_buffer[received++] = (u8)midi_byte;
 }

 return received;
}
