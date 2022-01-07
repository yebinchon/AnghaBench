
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct mtpav_port {int mode; } ;
struct mtpav {scalar_t__ istimer; int spinlock; struct mtpav_port* ports; } ;
struct TYPE_2__ {struct mtpav* private_data; } ;


 int MTPAV_MODE_OUTPUT_TRIGGERED ;
 int snd_mtpav_add_output_timer (struct mtpav*) ;
 int snd_mtpav_output_write (struct snd_rawmidi_substream*) ;
 int snd_mtpav_remove_output_timer (struct mtpav*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_mtpav_output_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct mtpav *mtp_card = substream->rmidi->private_data;
 struct mtpav_port *portp = &mtp_card->ports[substream->number];
 unsigned long flags;

 spin_lock_irqsave(&mtp_card->spinlock, flags);
 if (up) {
  if (! (portp->mode & MTPAV_MODE_OUTPUT_TRIGGERED)) {
   if (mtp_card->istimer++ == 0)
    snd_mtpav_add_output_timer(mtp_card);
   portp->mode |= MTPAV_MODE_OUTPUT_TRIGGERED;
  }
 } else {
  portp->mode &= ~MTPAV_MODE_OUTPUT_TRIGGERED;
  if (--mtp_card->istimer == 0)
   snd_mtpav_remove_output_timer(mtp_card);
 }
 spin_unlock_irqrestore(&mtp_card->spinlock, flags);

 if (up)
  snd_mtpav_output_write(substream);
}
