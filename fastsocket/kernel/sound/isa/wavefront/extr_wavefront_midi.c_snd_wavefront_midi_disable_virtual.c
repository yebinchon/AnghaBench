
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int virtual; scalar_t__ isvirtual; } ;
struct TYPE_6__ {TYPE_1__ midi; } ;
struct TYPE_7__ {TYPE_2__ wavefront; } ;
typedef TYPE_3__ snd_wavefront_card_t ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
snd_wavefront_midi_disable_virtual (snd_wavefront_card_t *card)

{
 unsigned long flags;

 spin_lock_irqsave (&card->wavefront.midi.virtual, flags);


 card->wavefront.midi.isvirtual = 0;
 spin_unlock_irqrestore (&card->wavefront.midi.virtual, flags);
}
