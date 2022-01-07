
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct snd_korg1212 {scalar_t__ stop_pending_cnt; int dsp_stop_is_processed; size_t cardState; int lock; int wait; TYPE_1__* sharedBufferPtr; TYPE_2__ timer; } ;
struct TYPE_3__ {scalar_t__ cardCommand; } ;


 int K1212_DEBUG_PRINTK (char*,int ) ;
 int K1212_DEBUG_PRINTK_VERBOSE (char*,int ) ;
 int add_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int snd_printd (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int * stateName ;
 int wake_up (int *) ;

__attribute__((used)) static void snd_korg1212_timer_func(unsigned long data)
{
        struct snd_korg1212 *korg1212 = (struct snd_korg1212 *) data;
 unsigned long flags;

 spin_lock_irqsave(&korg1212->lock, flags);
 if (korg1212->sharedBufferPtr->cardCommand == 0) {

  korg1212->stop_pending_cnt = 0;
  korg1212->dsp_stop_is_processed = 1;
  wake_up(&korg1212->wait);
  K1212_DEBUG_PRINTK_VERBOSE("K1212_DEBUG: Stop ack'ed [%s]\n",
        stateName[korg1212->cardState]);
 } else {
  if (--korg1212->stop_pending_cnt > 0) {

   korg1212->timer.expires = jiffies + 1;
   add_timer(&korg1212->timer);
  } else {
   snd_printd("korg1212_timer_func timeout\n");
   korg1212->sharedBufferPtr->cardCommand = 0;
   korg1212->dsp_stop_is_processed = 1;
   wake_up(&korg1212->wait);
   K1212_DEBUG_PRINTK("K1212_DEBUG: Stop timeout [%s]\n",
        stateName[korg1212->cardState]);
  }
 }
 spin_unlock_irqrestore(&korg1212->lock, flags);
}
