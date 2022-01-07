
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_station_state_ev {int type; } ;


 int GFP_ATOMIC ;
 int LLC_STATION_EV_TYPE_ACK_TMR ;
 struct sk_buff* alloc_skb (int ,int ) ;
 struct llc_station_state_ev* llc_station_ev (struct sk_buff*) ;
 int llc_station_state_process (struct sk_buff*) ;

__attribute__((used)) static void llc_station_ack_tmr_cb(unsigned long timeout_data)
{
 struct sk_buff *skb = alloc_skb(0, GFP_ATOMIC);

 if (skb) {
  struct llc_station_state_ev *ev = llc_station_ev(skb);

  ev->type = LLC_STATION_EV_TYPE_ACK_TMR;
  llc_station_state_process(skb);
 }
}
