
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int lock; int control_register; } ;


 int HDSPM_LatencyMask ;
 int HDSPM_controlRegister ;
 int hdspm_compute_period_size (struct hdspm*) ;
 int hdspm_encode_latency (int) ;
 int hdspm_write (struct hdspm*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int hdspm_set_interrupt_interval(struct hdspm * s, unsigned int frames)
{
 int n;

 spin_lock_irq(&s->lock);

 frames >>= 7;
 n = 0;
 while (frames) {
  n++;
  frames >>= 1;
 }
 s->control_register &= ~HDSPM_LatencyMask;
 s->control_register |= hdspm_encode_latency(n);

 hdspm_write(s, HDSPM_controlRegister, s->control_register);

 hdspm_compute_period_size(s);

 spin_unlock_irq(&s->lock);

 return 0;
}
