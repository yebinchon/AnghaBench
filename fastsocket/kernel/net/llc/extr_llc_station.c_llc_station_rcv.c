
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_station_state_ev {scalar_t__ reason; int type; } ;


 int LLC_STATION_EV_TYPE_PDU ;
 struct llc_station_state_ev* llc_station_ev (struct sk_buff*) ;
 int llc_station_state_process (struct sk_buff*) ;

__attribute__((used)) static void llc_station_rcv(struct sk_buff *skb)
{
 struct llc_station_state_ev *ev = llc_station_ev(skb);

 ev->type = LLC_STATION_EV_TYPE_PDU;
 ev->reason = 0;
 llc_station_state_process(skb);
}
