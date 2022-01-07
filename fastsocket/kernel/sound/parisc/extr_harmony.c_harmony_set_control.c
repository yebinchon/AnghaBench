
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int format; int stereo; int rate; } ;
struct snd_harmony {int lock; TYPE_1__ st; } ;


 int HARMONY_CNTL ;
 int HARMONY_CNTL_C ;
 int harmony_wait_for_control (struct snd_harmony*) ;
 int harmony_write (struct snd_harmony*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
harmony_set_control(struct snd_harmony *h)
{
 u32 ctrl;
 unsigned long flags;

 spin_lock_irqsave(&h->lock, flags);

 ctrl = (HARMONY_CNTL_C |
  (h->st.format << 6) |
  (h->st.stereo << 5) |
  (h->st.rate));

 harmony_wait_for_control(h);
 harmony_write(h, HARMONY_CNTL, ctrl);

 spin_unlock_irqrestore(&h->lock, flags);
}
