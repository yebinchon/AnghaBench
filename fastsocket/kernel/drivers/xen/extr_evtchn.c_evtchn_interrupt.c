
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_user_data {scalar_t__ ring_prod; scalar_t__ ring_cons; unsigned int* ring; int ring_overflow; int evtchn_async_queue; int evtchn_wait; } ;
typedef int irqreturn_t ;


 size_t EVTCHN_RING_MASK (scalar_t__) ;
 scalar_t__ EVTCHN_RING_SIZE ;
 int IRQ_HANDLED ;
 int POLL_IN ;
 int SIGIO ;
 int disable_irq_nosync (int) ;
 int kill_fasync (int *,int ,int ) ;
 struct per_user_data** port_user ;
 int port_user_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;
 int wmb () ;

irqreturn_t evtchn_interrupt(int irq, void *data)
{
 unsigned int port = (unsigned long)data;
 struct per_user_data *u;

 spin_lock(&port_user_lock);

 u = port_user[port];

 disable_irq_nosync(irq);

 if ((u->ring_prod - u->ring_cons) < EVTCHN_RING_SIZE) {
  u->ring[EVTCHN_RING_MASK(u->ring_prod)] = port;
  wmb();
  if (u->ring_cons == u->ring_prod++) {
   wake_up_interruptible(&u->evtchn_wait);
   kill_fasync(&u->evtchn_async_queue,
        SIGIO, POLL_IN);
  }
 } else {
  u->ring_overflow = 1;
 }

 spin_unlock(&port_user_lock);

 return IRQ_HANDLED;
}
