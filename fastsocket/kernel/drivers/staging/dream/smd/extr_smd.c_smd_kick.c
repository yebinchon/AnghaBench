
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int last_state; int priv; int (* notify ) (int ,int ) ;TYPE_1__* recv; int (* update_state ) (TYPE_2__*) ;} ;
typedef TYPE_2__ smd_channel_t ;
struct TYPE_5__ {unsigned int state; } ;


 int SMD_EVENT_CLOSE ;
 int SMD_EVENT_DATA ;
 int SMD_EVENT_OPEN ;
 unsigned int SMD_SS_OPENED ;
 int notify_other_smd () ;
 int smd_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;

void smd_kick(smd_channel_t *ch)
{
 unsigned long flags;
 unsigned tmp;

 spin_lock_irqsave(&smd_lock, flags);
 ch->update_state(ch);
 tmp = ch->recv->state;
 if (tmp != ch->last_state) {
  ch->last_state = tmp;
  if (tmp == SMD_SS_OPENED)
   ch->notify(ch->priv, SMD_EVENT_OPEN);
  else
   ch->notify(ch->priv, SMD_EVENT_CLOSE);
 }
 ch->notify(ch->priv, SMD_EVENT_DATA);
 notify_other_smd();
 spin_unlock_irqrestore(&smd_lock, flags);
}
