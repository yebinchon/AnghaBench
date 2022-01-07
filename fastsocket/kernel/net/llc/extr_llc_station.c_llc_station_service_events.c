
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int list; } ;
struct TYPE_4__ {TYPE_1__ ev_q; } ;


 TYPE_2__ llc_main_station ;
 int llc_station_next_state (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void llc_station_service_events(void)
{
 struct sk_buff *skb;

 while ((skb = skb_dequeue(&llc_main_station.ev_q.list)) != ((void*)0))
  llc_station_next_state(skb);
}
