
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ hwstate; scalar_t__ byte_count; int * swbuf; int chan; int queue; int lock; int swstate; } ;
typedef TYPE_1__ vwsnd_port_t ;
typedef scalar_t__ vwsnd_port_hwstate_t ;
struct TYPE_8__ {int lith; TYPE_1__ rport; } ;
typedef TYPE_2__ vwsnd_dev_t ;
struct TYPE_9__ {int state; } ;


 int DECLARE_WAITQUEUE (int ,TYPE_5__*) ;
 scalar_t__ HW_STOPPED ;
 int SW_INITIAL ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int ad1843_shutdown_adc (int *) ;
 int ad1843_shutdown_dac (int *) ;
 int add_wait_queue (int *,int *) ;
 TYPE_5__* current ;
 int li_disable_interrupts (int *,unsigned int) ;
 int li_shutdown_dma (int *) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vfree (int *) ;
 int wait ;

__attribute__((used)) static void pcm_shutdown_port(vwsnd_dev_t *devc,
         vwsnd_port_t *aport,
         unsigned int mask)
{
 unsigned long flags;
 vwsnd_port_hwstate_t hwstate;
 DECLARE_WAITQUEUE(wait, current);

 aport->swstate = SW_INITIAL;
 add_wait_queue(&aport->queue, &wait);
 while (1) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  spin_lock_irqsave(&aport->lock, flags);
  {
   hwstate = aport->hwstate;
  }
  spin_unlock_irqrestore(&aport->lock, flags);
  if (hwstate == HW_STOPPED)
   break;
  schedule();
 }
 current->state = TASK_RUNNING;
 remove_wait_queue(&aport->queue, &wait);
 li_disable_interrupts(&devc->lith, mask);
 if (aport == &devc->rport)
  ad1843_shutdown_adc(&devc->lith);
 else
  ad1843_shutdown_dac(&devc->lith);
 li_shutdown_dma(&aport->chan);
 vfree(aport->swbuf);
 aport->swbuf = ((void*)0);
 aport->byte_count = 0;
}
