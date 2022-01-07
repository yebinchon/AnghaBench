
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_line6 {int max_packet_size; struct snd_line6_midi* line6midi; } ;
struct snd_rawmidi_substream {int dummy; } ;
struct MidiBuffer {int dummy; } ;
struct snd_line6_midi {int midi_transmit_lock; int midi_mask_transmit; struct MidiBuffer midibuf_out; } ;
struct TYPE_2__ {struct usb_line6* line6; } ;


 TYPE_1__* line6_rawmidi_substream_midi (struct snd_rawmidi_substream*) ;
 int line6_write_hexdump (struct usb_line6*,char,unsigned char*,int) ;
 int midibuf_bytes_free (struct MidiBuffer*) ;
 int midibuf_read (struct MidiBuffer*,unsigned char*,int) ;
 scalar_t__ midibuf_skip_message (struct MidiBuffer*,int ) ;
 int midibuf_write (struct MidiBuffer*,unsigned char*,int) ;
 int min (int ,int) ;
 int send_midi_async (struct usb_line6*,unsigned char*,int) ;
 int snd_rawmidi_transmit_ack (struct snd_rawmidi_substream*,int) ;
 int snd_rawmidi_transmit_peek (struct snd_rawmidi_substream*,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void line6_midi_transmit(struct snd_rawmidi_substream *substream)
{
 struct usb_line6 *line6 = line6_rawmidi_substream_midi(substream)->line6;
 struct snd_line6_midi *line6midi = line6->line6midi;
 struct MidiBuffer *mb = &line6midi->midibuf_out;
 unsigned long flags;
 unsigned char chunk[line6->max_packet_size];
 int req, done;

 spin_lock_irqsave(&line6->line6midi->midi_transmit_lock, flags);

 for (;;) {
  req = min(midibuf_bytes_free(mb), line6->max_packet_size);
  done = snd_rawmidi_transmit_peek(substream, chunk, req);

  if (done == 0)
   break;




  midibuf_write(mb, chunk, done);
  snd_rawmidi_transmit_ack(substream, done);
 }

 for (;;) {
  done = midibuf_read(mb, chunk, line6->max_packet_size);

  if (done == 0)
   break;

  if (midibuf_skip_message(mb, line6midi->midi_mask_transmit))
   continue;

  send_midi_async(line6, chunk, done);
 }

 spin_unlock_irqrestore(&line6->line6midi->midi_transmit_lock, flags);
}
