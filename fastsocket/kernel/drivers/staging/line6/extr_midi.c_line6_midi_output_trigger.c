
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_line6 {TYPE_1__* line6midi; } ;
struct snd_rawmidi_substream {int dummy; } ;
struct TYPE_4__ {struct usb_line6* line6; } ;
struct TYPE_3__ {scalar_t__ num_active_send_urbs; int send_urb_lock; struct snd_rawmidi_substream* substream_transmit; } ;


 int line6_midi_transmit (struct snd_rawmidi_substream*) ;
 TYPE_2__* line6_rawmidi_substream_midi (struct snd_rawmidi_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void line6_midi_output_trigger(struct snd_rawmidi_substream *substream,
          int up)
{
 unsigned long flags;
 struct usb_line6 *line6 = line6_rawmidi_substream_midi(substream)->line6;

 line6->line6midi->substream_transmit = substream;
 spin_lock_irqsave(&line6->line6midi->send_urb_lock, flags);

 if (line6->line6midi->num_active_send_urbs == 0)
  line6_midi_transmit(substream);

 spin_unlock_irqrestore(&line6->line6midi->send_urb_lock, flags);
}
