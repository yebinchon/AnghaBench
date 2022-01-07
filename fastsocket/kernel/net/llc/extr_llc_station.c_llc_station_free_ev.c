
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_station_state_ev {scalar_t__ type; } ;


 scalar_t__ LLC_STATION_EV_TYPE_PDU ;
 int kfree_skb (struct sk_buff*) ;
 struct llc_station_state_ev* llc_station_ev (struct sk_buff*) ;

__attribute__((used)) static void llc_station_free_ev(struct sk_buff *skb)
{
 struct llc_station_state_ev *ev = llc_station_ev(skb);

 if (ev->type == LLC_STATION_EV_TYPE_PDU)
  kfree_skb(skb);
}
