
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ hwstate; int swstate; int queue; int lock; } ;
typedef TYPE_1__ vwsnd_port_t ;
typedef scalar_t__ vwsnd_port_hwstate_t ;
struct TYPE_8__ {TYPE_1__ wport; } ;
typedef TYPE_2__ vwsnd_dev_t ;
struct TYPE_9__ {int state; } ;


 int DBGEV (char*,TYPE_2__*) ;
 int DBGPV (char*,int ,scalar_t__) ;
 int DBGRV () ;
 int DECLARE_WAITQUEUE (int ,TYPE_4__*) ;
 scalar_t__ HW_STOPPED ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 TYPE_4__* current ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait ;

__attribute__((used)) static void pcm_write_sync(vwsnd_dev_t *devc)
{
 vwsnd_port_t *wport = &devc->wport;
 DECLARE_WAITQUEUE(wait, current);
 unsigned long flags;
 vwsnd_port_hwstate_t hwstate;

 DBGEV("(devc=0x%p)\n", devc);
 add_wait_queue(&wport->queue, &wait);
 while (1) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  spin_lock_irqsave(&wport->lock, flags);
  {
   hwstate = wport->hwstate;
  }
  spin_unlock_irqrestore(&wport->lock, flags);
  if (hwstate == HW_STOPPED)
   break;
  schedule();
 }
 current->state = TASK_RUNNING;
 remove_wait_queue(&wport->queue, &wait);
 DBGPV("swstate = %d, hwstate = %d\n", wport->swstate, wport->hwstate);
 DBGRV();
}
