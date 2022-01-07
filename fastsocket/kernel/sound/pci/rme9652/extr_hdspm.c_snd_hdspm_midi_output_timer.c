
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct hdspm_midi {int lock; TYPE_1__ timer; scalar_t__ istimer; } ;


 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int snd_hdspm_midi_output_write (struct hdspm_midi*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_hdspm_midi_output_timer(unsigned long data)
{
 struct hdspm_midi *hmidi = (struct hdspm_midi *) data;
 unsigned long flags;

 snd_hdspm_midi_output_write(hmidi);
 spin_lock_irqsave (&hmidi->lock, flags);







 if (hmidi->istimer) {
  hmidi->timer.expires = 1 + jiffies;
  add_timer(&hmidi->timer);
 }

 spin_unlock_irqrestore (&hmidi->lock, flags);
}
