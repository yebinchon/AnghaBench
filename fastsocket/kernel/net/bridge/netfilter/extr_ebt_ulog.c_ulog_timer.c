
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; scalar_t__ skb; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 TYPE_1__* ulog_buffers ;
 int ulog_send (unsigned long) ;

__attribute__((used)) static void ulog_timer(unsigned long data)
{
 spin_lock_bh(&ulog_buffers[data].lock);
 if (ulog_buffers[data].skb)
  ulog_send(data);
 spin_unlock_bh(&ulog_buffers[data].lock);
}
