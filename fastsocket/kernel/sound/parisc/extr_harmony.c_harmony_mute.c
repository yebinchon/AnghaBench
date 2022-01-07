
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_harmony {int mixer_lock; } ;


 int HARMONY_GAINCTL ;
 int HARMONY_GAIN_SILENCE ;
 int harmony_wait_for_control (struct snd_harmony*) ;
 int harmony_write (struct snd_harmony*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
harmony_mute(struct snd_harmony *h)
{
 unsigned long flags;

 spin_lock_irqsave(&h->mixer_lock, flags);
 harmony_wait_for_control(h);
 harmony_write(h, HARMONY_GAINCTL, HARMONY_GAIN_SILENCE);
 spin_unlock_irqrestore(&h->mixer_lock, flags);
}
