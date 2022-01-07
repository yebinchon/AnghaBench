
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gain; } ;
struct snd_harmony {int mixer_lock; TYPE_1__ st; } ;


 int HARMONY_GAINCTL ;
 int harmony_wait_for_control (struct snd_harmony*) ;
 int harmony_write (struct snd_harmony*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
harmony_unmute(struct snd_harmony *h)
{
 unsigned long flags;

 spin_lock_irqsave(&h->mixer_lock, flags);
 harmony_wait_for_control(h);
 harmony_write(h, HARMONY_GAINCTL, h->st.gain);
 spin_unlock_irqrestore(&h->mixer_lock, flags);
}
