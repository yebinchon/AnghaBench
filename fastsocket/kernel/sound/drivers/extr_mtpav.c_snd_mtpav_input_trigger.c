
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct mtpav_port {int mode; } ;
struct mtpav {int spinlock; struct mtpav_port* ports; } ;
struct TYPE_2__ {struct mtpav* private_data; } ;


 int MTPAV_MODE_INPUT_TRIGGERED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_mtpav_input_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct mtpav *mtp_card = substream->rmidi->private_data;
 struct mtpav_port *portp = &mtp_card->ports[substream->number];
 unsigned long flags;

 spin_lock_irqsave(&mtp_card->spinlock, flags);
 if (up)
  portp->mode |= MTPAV_MODE_INPUT_TRIGGERED;
 else
  portp->mode &= ~MTPAV_MODE_INPUT_TRIGGERED;
 spin_unlock_irqrestore(&mtp_card->spinlock, flags);

}
