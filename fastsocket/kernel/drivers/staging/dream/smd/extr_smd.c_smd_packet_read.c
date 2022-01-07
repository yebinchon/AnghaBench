
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int current_packet; } ;
typedef TYPE_1__ smd_channel_t ;


 int EINVAL ;
 int ch_read (TYPE_1__*,void*,int) ;
 int notify_other_smd () ;
 int smd_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_packet_state (TYPE_1__*) ;

__attribute__((used)) static int smd_packet_read(smd_channel_t *ch, void *data, int len)
{
 unsigned long flags;
 int r;

 if (len < 0)
  return -EINVAL;

 if (len > ch->current_packet)
  len = ch->current_packet;

 r = ch_read(ch, data, len);
 if (r > 0)
  notify_other_smd();

 spin_lock_irqsave(&smd_lock, flags);
 ch->current_packet -= r;
 update_packet_state(ch);
 spin_unlock_irqrestore(&smd_lock, flags);

 return r;
}
