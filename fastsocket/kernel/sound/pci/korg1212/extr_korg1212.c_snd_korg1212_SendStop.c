
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct snd_korg1212 {TYPE_2__ timer; scalar_t__ stop_pending_cnt; TYPE_1__* sharedBufferPtr; } ;
struct TYPE_3__ {int cardCommand; } ;


 scalar_t__ HZ ;
 int add_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void snd_korg1212_SendStop(struct snd_korg1212 *korg1212)
{
 if (! korg1212->stop_pending_cnt) {
  korg1212->sharedBufferPtr->cardCommand = 0xffffffff;

  korg1212->stop_pending_cnt = HZ;
  korg1212->timer.expires = jiffies + 1;
  add_timer(&korg1212->timer);
 }
}
