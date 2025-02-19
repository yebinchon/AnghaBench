
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct hdspm_midi {scalar_t__ id; struct hdspm* hdspm; } ;
struct hdspm {int control_register; int lock; } ;
struct TYPE_2__ {struct hdspm_midi* private_data; } ;


 int HDSPM_Midi0InterruptEnable ;
 int HDSPM_Midi1InterruptEnable ;
 int HDSPM_controlRegister ;
 int hdspm_write (struct hdspm*,int ,int) ;
 int snd_hdspm_flush_midi_input (struct hdspm*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
snd_hdspm_midi_input_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct hdspm *hdspm;
 struct hdspm_midi *hmidi;
 unsigned long flags;
 u32 ie;

 hmidi = substream->rmidi->private_data;
 hdspm = hmidi->hdspm;
 ie = hmidi->id ?
  HDSPM_Midi1InterruptEnable : HDSPM_Midi0InterruptEnable;
 spin_lock_irqsave (&hdspm->lock, flags);
 if (up) {
  if (!(hdspm->control_register & ie)) {
   snd_hdspm_flush_midi_input (hdspm, hmidi->id);
   hdspm->control_register |= ie;
  }
 } else {
  hdspm->control_register &= ~ie;
 }

 hdspm_write(hdspm, HDSPM_controlRegister, hdspm->control_register);
 spin_unlock_irqrestore (&hdspm->lock, flags);
}
