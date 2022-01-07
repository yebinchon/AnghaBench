
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp_midi {int lock; int id; int hdsp; scalar_t__ output; } ;
typedef int buf ;


 int snd_hdsp_midi_output_possible (int ,int ) ;
 int snd_hdsp_midi_write_byte (int ,int ,unsigned char) ;
 int snd_rawmidi_transmit (scalar_t__,unsigned char*,int) ;
 int snd_rawmidi_transmit_empty (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_hdsp_midi_output_write (struct hdsp_midi *hmidi)
{
 unsigned long flags;
 int n_pending;
 int to_write;
 int i;
 unsigned char buf[128];



 spin_lock_irqsave (&hmidi->lock, flags);
 if (hmidi->output) {
  if (!snd_rawmidi_transmit_empty (hmidi->output)) {
   if ((n_pending = snd_hdsp_midi_output_possible (hmidi->hdsp, hmidi->id)) > 0) {
    if (n_pending > (int)sizeof (buf))
     n_pending = sizeof (buf);

    if ((to_write = snd_rawmidi_transmit (hmidi->output, buf, n_pending)) > 0) {
     for (i = 0; i < to_write; ++i)
      snd_hdsp_midi_write_byte (hmidi->hdsp, hmidi->id, buf[i]);
    }
   }
  }
 }
 spin_unlock_irqrestore (&hmidi->lock, flags);
 return 0;
}
