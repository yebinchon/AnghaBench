
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int lock; int list; } ;
struct TYPE_4__ {TYPE_1__ ev_q; } ;


 TYPE_2__ llc_main_station ;
 int llc_station_service_events () ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void llc_station_state_process(struct sk_buff *skb)
{
 spin_lock_bh(&llc_main_station.ev_q.lock);
 skb_queue_tail(&llc_main_station.ev_q.list, skb);
 llc_station_service_events();
 spin_unlock_bh(&llc_main_station.ev_q.lock);
}
