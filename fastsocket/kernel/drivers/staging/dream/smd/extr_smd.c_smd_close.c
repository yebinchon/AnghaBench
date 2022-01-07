
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ch_list; int send; int notify; } ;
typedef TYPE_1__ smd_channel_t ;


 int SMD_SS_CLOSED ;
 int do_nothing_notify ;
 int hc_set_state (int ,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,TYPE_1__*) ;
 int smd_ch_closed_list ;
 int smd_creation_mutex ;
 int smd_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int smd_close(smd_channel_t *ch)
{
 unsigned long flags;

 pr_info("smd_close(%p)\n", ch);

 if (ch == 0)
  return -1;

 spin_lock_irqsave(&smd_lock, flags);
 ch->notify = do_nothing_notify;
 list_del(&ch->ch_list);
 hc_set_state(ch->send, SMD_SS_CLOSED);
 spin_unlock_irqrestore(&smd_lock, flags);

 mutex_lock(&smd_creation_mutex);
 list_add(&ch->ch_list, &smd_ch_closed_list);
 mutex_unlock(&smd_creation_mutex);

 return 0;
}
