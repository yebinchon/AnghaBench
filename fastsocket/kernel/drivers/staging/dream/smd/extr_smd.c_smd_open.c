
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smd_channel {void (* notify ) (void*,unsigned int) ;TYPE_2__* send; TYPE_1__* recv; int ch_list; void* priv; int last_state; scalar_t__ current_packet; } ;
typedef struct smd_channel smd_channel_t ;
struct TYPE_4__ {scalar_t__ head; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 int ENODEV ;
 int SMD_SS_CLOSED ;
 scalar_t__ SMD_SS_CLOSING ;
 int SMD_SS_OPENED ;
 int SMD_SS_OPENING ;
 void do_nothing_notify (void*,unsigned int) ;
 int hc_set_state (TYPE_2__*,int ) ;
 int list_add (int *,int *) ;
 int pr_info (char*) ;
 int smd_ch_list ;
 struct smd_channel* smd_get_channel (char const*) ;
 scalar_t__ smd_initialized ;
 int smd_kick (struct smd_channel*) ;
 int smd_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int smd_open(const char *name, smd_channel_t **_ch,
      void *priv, void (*notify)(void *, unsigned))
{
 struct smd_channel *ch;
 unsigned long flags;

 if (smd_initialized == 0) {
  pr_info("smd_open() before smd_init()\n");
  return -ENODEV;
 }

 ch = smd_get_channel(name);
 if (!ch)
  return -ENODEV;

 if (notify == 0)
  notify = do_nothing_notify;

 ch->notify = notify;
 ch->current_packet = 0;
 ch->last_state = SMD_SS_CLOSED;
 ch->priv = priv;

 *_ch = ch;

 spin_lock_irqsave(&smd_lock, flags);
 list_add(&ch->ch_list, &smd_ch_list);
 if (ch->recv->state == SMD_SS_CLOSING) {
  ch->send->head = 0;
  hc_set_state(ch->send, SMD_SS_OPENING);
 } else {
  hc_set_state(ch->send, SMD_SS_OPENED);
 }
 spin_unlock_irqrestore(&smd_lock, flags);
 smd_kick(ch);

 return 0;
}
